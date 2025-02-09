/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create artists table
  pgm.createTable("artists", {
    id: "id",
    name: { type: "varchar(255)", notNull: true },
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
    updated_user_id: { type: "integer", notNull: true },
  });

  // Create artist_genres table for many-to-many relationship
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
    updated_user_id: { type: "integer", notNull: true },
  });

  // Create unique index for artist_genres to prevent duplicate relationships
  pgm.createIndex("artist_genres", ["artist_id", "genre_id"], { unique: true });

  // Create trigger for updating updated_at
  pgm.createTrigger("artists", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("artists", "update_updated_at_trigger", { ifExists: true });

  // Drop tables
  pgm.dropTable("artist_genres", { ifExists: true });
  pgm.dropTable("artists", { ifExists: true });
};
