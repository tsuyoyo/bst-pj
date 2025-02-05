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
    rating: {
      type: "integer",
      notNull: true,
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

  // Create indexes
  pgm.createIndex("studio_reviews", ["studio_id"]);
  pgm.createIndex("studio_reviews", ["user_id"]);
  pgm.createIndex("studio_reviews", ["rating"]);

  // Create check constraint for rating
  pgm.createConstraint("studio_reviews", "studio_reviews_rating_check", {
    check: "rating >= 1 AND rating <= 5",
  });
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("studio_reviews", "update_updated_at_trigger", {
    ifExists: true,
  });

  // Drop constraint
  pgm.dropConstraint("studio_reviews", "studio_reviews_rating_check", {
    ifExists: true,
  });

  // Drop indexes
  pgm.dropIndex("studio_reviews", ["studio_id"], { ifExists: true });
  pgm.dropIndex("studio_reviews", ["user_id"], { ifExists: true });
  pgm.dropIndex("studio_reviews", ["rating"], { ifExists: true });

  // Drop table
  pgm.dropTable("studio_reviews", { ifExists: true });
};
