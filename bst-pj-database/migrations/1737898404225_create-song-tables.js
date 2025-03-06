/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create songs table
  pgm.createTable("songs", {
    id: "id",
    title: { type: "varchar(255)", notNull: true },
    artist_id: {
      type: "integer",
      notNull: true,
      references: "artists",
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
    updated_user_id: { type: "integer", notNull: true },
  });

  // Create trigger for updating updated_at
  pgm.createTrigger("songs", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("songs", "update_updated_at_trigger", { ifExists: true });

  // Drop table
  pgm.dropTable("songs", { ifExists: true });
};
