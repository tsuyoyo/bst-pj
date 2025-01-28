/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create reaction_types table
  pgm.createTable("reaction_types", {
    id: "id",
    name: {
      type: "varchar(50)",
      notNull: true,
      comment: "例: Like, Dislike, Emoji",
    },
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

  // Create trigger for updating updated_at
  pgm.createTrigger("reaction_types", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create unique index for name
  pgm.createIndex("reaction_types", ["name"], { unique: true });
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("reaction_types", "update_updated_at_trigger", {
    ifExists: true,
  });

  // Drop index
  pgm.dropIndex("reaction_types", ["name"], { ifExists: true });

  // Drop table
  pgm.dropTable("reaction_types", { ifExists: true });
};
