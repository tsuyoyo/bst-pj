/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create enum type for context_type
  pgm.createType("thread_context_type", ["Session", "Group", "Global"]);

  // Create threads table
  pgm.createTable("threads", {
    id: "id",
    context_type: {
      type: "thread_context_type",
      notNull: true,
    },
    context_id: {
      type: "integer",
      comment: "対応するコンテキストのID（セッションIDやグループIDなど）",
    },
    title: {
      type: "varchar(255)",
      notNull: true,
    },
    description: { type: "text" },
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

  // Create trigger for updating updated_at
  pgm.createTrigger("threads", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("threads", ["context_type", "context_id"]);
  pgm.createIndex("threads", ["created_by"]);
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("threads", "update_updated_at_trigger", { ifExists: true });

  // Drop indexes
  pgm.dropIndex("threads", ["context_type", "context_id"], { ifExists: true });
  pgm.dropIndex("threads", ["created_by"], { ifExists: true });

  // Drop table
  pgm.dropTable("threads", { ifExists: true });

  // Drop enum type
  pgm.dropType("thread_context_type", { ifExists: true });
};
