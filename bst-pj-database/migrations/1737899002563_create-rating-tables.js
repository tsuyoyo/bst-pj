/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create enum type for rating target type
  pgm.createType("rating_target_type", [
    "Session",
    "SongPerformance",
    "Party",
    "User",
  ]);

  // Create ratings table
  pgm.createTable("ratings", {
    id: "id",
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    target_type: {
      type: "rating_target_type",
      notNull: true,
    },
    target_id: {
      type: "integer",
      notNull: true,
    },
    rating: {
      type: "integer",
      notNull: true,
      check: "rating >= 1 AND rating <= 5",
    },
    comment: { type: "text" },
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
  pgm.createTrigger("ratings", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("ratings", ["target_type", "target_id"]);
  pgm.createIndex("ratings", ["user_id"]);
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("ratings", "update_updated_at_trigger", {
    ifExists: true,
  });

  // Drop indexes
  pgm.dropIndex("ratings", ["target_type", "target_id"], { ifExists: true });
  pgm.dropIndex("ratings", ["user_id"], { ifExists: true });

  // Drop table
  pgm.dropTable("ratings", { ifExists: true });

  // Drop enum type
  pgm.dropType("rating_target_type", { ifExists: true });
};
