/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create studios table
  pgm.createTable("studios", {
    id: "id",
    name: { type: "varchar(255)", notNull: true },
    location_id: {
      type: "integer",
      notNull: true,
      references: "locations",
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
  pgm.createTrigger("studios", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("studios", "update_updated_at_trigger", { ifExists: true });

  // Drop table
  pgm.dropTable("studios", { ifExists: true });
};
