/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create studio_reviews table
  pgm.createTable("studio_reviews", {
    id: "id",
    studio_id: {
      type: "integer",
      notNull: true,
      references: "studios",
      onDelete: "CASCADE",
    },
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    capacity: { type: "integer", notNull: true },
    price: { type: "integer", notNull: true },
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
  pgm.createTrigger("studio_reviews", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create index for studio_id and user_id
  pgm.createIndex("studio_reviews", ["studio_id", "user_id"]);
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("studio_reviews", "update_updated_at_trigger", {
    ifExists: true,
  });

  // Drop index
  pgm.dropIndex("studio_reviews", ["studio_id", "user_id"], { ifExists: true });

  // Drop table
  pgm.dropTable("studio_reviews", { ifExists: true });
};
