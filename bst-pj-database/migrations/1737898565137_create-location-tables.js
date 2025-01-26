/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create locations table
  pgm.createTable("locations", {
    id: "id",
    name: { type: "varchar(255)", notNull: true },
    google_maps_url: { type: "text" },
    additional_info: { type: "text" },
    area_id: {
      type: "integer",
      notNull: true,
      references: "areas",
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
  pgm.createTrigger("locations", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("locations", "update_updated_at_trigger", { ifExists: true });

  // Drop table
  pgm.dropTable("locations", { ifExists: true });
};
