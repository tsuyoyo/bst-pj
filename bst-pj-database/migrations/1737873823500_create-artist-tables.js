/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create user_artists table (Many-to-Many relationship)
  pgm.createTable("user_artists", {
    id: "id",
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
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
  });

  // Create unique index to prevent duplicate relationships
  pgm.createIndex("user_artists", ["user_id", "artist_id"], { unique: true });
};

exports.down = (pgm) => {
  // Drop tables in reverse order
  pgm.dropTable("user_artists", { ifExists: true, cascade: true });
};
