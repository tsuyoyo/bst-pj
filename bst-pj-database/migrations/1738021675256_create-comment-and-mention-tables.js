/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create enum type for comment target type
  pgm.createType("comment_target_type", ["Thread", "Timeline", "Resource"]);

  // Create enum type for mention type
  pgm.createType("mention_type", ["User", "AllSession", "AllThread"]);

  // Create comments table
  pgm.createTable("comments", {
    id: "id",
    target_type: {
      type: "comment_target_type",
      notNull: true,
    },
    target_id: {
      type: "integer",
      notNull: true,
    },
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    content: {
      type: "text",
      notNull: true,
    },
    created_at: {
      type: "timestamp",
      notNull: true,
      default: pgm.func("current_timestamp"),
    },
    updated_at: {
      type: "timestamp",
      notNull: true,
      default: pgm.func("current_timestamp"),
    },
  });

  // Create mentions table
  pgm.createTable("mentions", {
    id: "id",
    comment_id: {
      type: "integer",
      notNull: true,
      references: "comments",
      onDelete: "CASCADE",
    },
    mention_type: {
      type: "mention_type",
      notNull: true,
    },
    mentioned_user_id: {
      type: "integer",
      references: "users",
      onDelete: "CASCADE",
      comment: "MentionTypeがUserの場合に使用",
    },
    mentioned_session_id: {
      type: "integer",
      comment: "MentionTypeがAllSessionの場合に使用",
    },
    mentioned_thread_id: {
      type: "integer",
      references: "threads",
      onDelete: "CASCADE",
      comment: "MentionTypeがAllThreadの場合に使用",
    },
    created_at: {
      type: "timestamp",
      notNull: true,
      default: pgm.func("current_timestamp"),
    },
    updated_at: {
      type: "timestamp",
      notNull: true,
      default: pgm.func("current_timestamp"),
    },
  });

  // Create triggers for updating updated_at
  pgm.createTrigger("comments", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  pgm.createTrigger("mentions", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("comments", ["target_type", "target_id"]);
  pgm.createIndex("comments", ["user_id"]);
  pgm.createIndex("mentions", ["comment_id"]);
  pgm.createIndex("mentions", ["mention_type"]);
  pgm.createIndex("mentions", ["mentioned_user_id"]);
  pgm.createIndex("mentions", ["mentioned_session_id"]);
  pgm.createIndex("mentions", ["mentioned_thread_id"]);
};

exports.down = (pgm) => {
  // Drop triggers
  pgm.dropTrigger("comments", "update_updated_at_trigger", { ifExists: true });
  pgm.dropTrigger("mentions", "update_updated_at_trigger", { ifExists: true });

  // Drop indexes
  pgm.dropIndex("comments", ["target_type", "target_id"], { ifExists: true });
  pgm.dropIndex("comments", ["user_id"], { ifExists: true });
  pgm.dropIndex("mentions", ["comment_id"], { ifExists: true });
  pgm.dropIndex("mentions", ["mention_type"], { ifExists: true });
  pgm.dropIndex("mentions", ["mentioned_user_id"], { ifExists: true });
  pgm.dropIndex("mentions", ["mentioned_session_id"], { ifExists: true });
  pgm.dropIndex("mentions", ["mentioned_thread_id"], { ifExists: true });

  // Drop tables
  pgm.dropTable("mentions", { ifExists: true });
  pgm.dropTable("comments", { ifExists: true });

  // Drop enum types
  pgm.dropType("mention_type", { ifExists: true });
  pgm.dropType("comment_target_type", { ifExists: true });
};
