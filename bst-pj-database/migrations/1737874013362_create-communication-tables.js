/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create mention_type enum
  pgm.createType("mention_type", [
    "user",
    "all_session_participants",
    "all_thread_participants",
  ]);

  // Create threads table
  pgm.createTable("threads", {
    id: "id",
    title: { type: "varchar(255)", notNull: true },
    description: { type: "text" },
    created_by: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    session_id: {
      type: "integer",
      references: "sessions",
      onDelete: "CASCADE",
    },
    session_song_id: {
      type: "integer",
      references: "session_songs",
      onDelete: "CASCADE",
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

  // Create comments table
  pgm.createTable("comments", {
    id: "id",
    content: { type: "text", notNull: true },
    thread_id: {
      type: "integer",
      notNull: true,
      references: "threads",
      onDelete: "CASCADE",
    },
    created_by: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
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
    type: { type: "mention_type", notNull: true },
    user_id: {
      type: "integer",
      references: "users",
      onDelete: "CASCADE",
    },
    created_at: {
      type: "timestamp",
      notNull: true,
      default: pgm.func("current_timestamp"),
    },
  });

  // Create reaction_types table
  pgm.createTable("reaction_types", {
    id: "id",
    name: { type: "varchar(50)", notNull: true },
    description: { type: "text" },
    icon_url: { type: "text" },
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

  // Create reactions table
  pgm.createTable("reactions", {
    id: "id",
    comment_id: {
      type: "integer",
      notNull: true,
      references: "comments",
      onDelete: "CASCADE",
    },
    reaction_type_id: {
      type: "integer",
      notNull: true,
      references: "reaction_types",
      onDelete: "CASCADE",
    },
    created_by: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    created_at: {
      type: "timestamp",
      notNull: true,
      default: pgm.func("current_timestamp"),
    },
  });

  // Create notifications table
  pgm.createTable("notifications", {
    id: "id",
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    title: { type: "varchar(255)", notNull: true },
    content: { type: "text", notNull: true },
    is_read: { type: "boolean", notNull: true, default: false },
    thread_id: {
      type: "integer",
      references: "threads",
      onDelete: "CASCADE",
    },
    comment_id: {
      type: "integer",
      references: "comments",
      onDelete: "CASCADE",
    },
    created_at: {
      type: "timestamp",
      notNull: true,
      default: pgm.func("current_timestamp"),
    },
  });

  // Create unique indexes
  pgm.createIndex(
    "reactions",
    ["comment_id", "reaction_type_id", "created_by"],
    { unique: true }
  );

  // Add updated_at triggers
  const tables = ["threads", "comments", "reaction_types"];
  tables.forEach((table) => {
    pgm.createTrigger(table, "update_updated_at_trigger", {
      when: "BEFORE",
      operation: "UPDATE",
      function: "update_updated_at",
      level: "ROW",
    });
  });
};

exports.down = (pgm) => {
  // Drop tables in reverse order
  pgm.dropTable("notifications", { ifExists: true, cascade: true });
  pgm.dropTable("reactions", { ifExists: true, cascade: true });
  pgm.dropTable("reaction_types", { ifExists: true, cascade: true });
  pgm.dropTable("mentions", { ifExists: true, cascade: true });
  pgm.dropTable("comments", { ifExists: true, cascade: true });
  pgm.dropTable("threads", { ifExists: true, cascade: true });

  // Drop enum types
  pgm.dropType("mention_type", { ifExists: true });
};
