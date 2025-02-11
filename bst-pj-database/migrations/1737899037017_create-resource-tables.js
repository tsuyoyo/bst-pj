/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create enum type for target_type
  pgm.createType("resource_target_type", [
    "Comment",
    "SongPerformance",
    "Session",
  ]);

  // Create enum type for resource_type
  pgm.createType("resource_type", [
    "RESOURCE_TYPE_UNSPECIFIED",
    "RESOURCE_TYPE_IMAGE",
    "RESOURCE_TYPE_VIDEO",
  ]);

  // Create resources table
  pgm.createTable("resources", {
    id: "id",
    target_type: {
      type: "resource_target_type",
      notNull: true,
    },
    target_id: {
      type: "integer",
      notNull: true,
    },
    type: {
      type: "resource_type",
      notNull: true,
      comment: "リソースの種類 (例: 画像, 動画)",
    },
    url: {
      type: "text",
      notNull: true,
    },
    name: {
      type: "varchar(255)",
      notNull: true,
    },
    description: {
      type: "text",
      notNull: true,
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

  // Create user_resources table
  pgm.createTable("user_resources", {
    id: "id",
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    resource_id: {
      type: "integer",
      notNull: true,
      references: "resources",
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

  // Create triggers for updating updated_at
  pgm.createTrigger("resources", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  pgm.createTrigger("user_resources", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("resources", ["target_type", "target_id"]);
  pgm.createIndex("user_resources", ["user_id"]);
  pgm.createIndex("user_resources", ["resource_id"]);
  pgm.createIndex("resources", ["type"]);
  pgm.createIndex("resources", ["created_by"]);
};

exports.down = (pgm) => {
  // Drop triggers
  pgm.dropTrigger("resources", "update_updated_at_trigger", { ifExists: true });
  pgm.dropTrigger("user_resources", "update_updated_at_trigger", {
    ifExists: true,
  });

  // Drop indexes
  pgm.dropIndex("resources", ["target_type", "target_id"], { ifExists: true });
  pgm.dropIndex("user_resources", ["user_id"], { ifExists: true });
  pgm.dropIndex("user_resources", ["resource_id"], { ifExists: true });
  pgm.dropIndex("resources", ["type"], { ifExists: true });
  pgm.dropIndex("resources", ["created_by"], { ifExists: true });

  // Drop tables
  pgm.dropTable("user_resources", { ifExists: true });
  pgm.dropTable("resources", { ifExists: true });

  // Drop enum type
  pgm.dropType("resource_target_type", { ifExists: true });
  pgm.dropType("resource_type", { ifExists: true });
};
