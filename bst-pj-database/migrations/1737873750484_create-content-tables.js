/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create artists table
  pgm.createTable("artists", {
    id: "id",
    name: { type: "varchar(255)", notNull: true },
    description: { type: "text" },
    website: { type: "text" },
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

  // Create artist_genres table (Many-to-Many relationship)
  pgm.createTable("artist_genres", {
    id: "id",
    artist_id: {
      type: "integer",
      notNull: true,
      references: "artists",
      onDelete: "CASCADE",
    },
    genre_id: {
      type: "integer",
      notNull: true,
      references: "genres",
      onDelete: "CASCADE",
    },
    created_at: {
      type: "timestamp",
      notNull: true,
      default: pgm.func("current_timestamp"),
    },
  });

  // Create unique index to prevent duplicate relationships
  pgm.createIndex("artist_genres", ["artist_id", "genre_id"], { unique: true });

  // Add updated_at triggers
  pgm.createTrigger("artists", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });
};

exports.down = (pgm) => {
  // Drop tables in reverse order
  pgm.dropTable("artist_genres", { ifExists: true, cascade: true });
  pgm.dropTable("artists", { ifExists: true, cascade: true });
};
