/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create user_artists table
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
    updated_at: {
      type: "timestamp",
      notNull: true,
      default: pgm.func("current_timestamp"),
    },
  });

  // Create trigger for updating updated_at
  pgm.createTrigger("user_artists", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("user_artists", ["user_id"]);
  pgm.createIndex("user_artists", ["artist_id"]);
  // Create unique constraint to prevent duplicate entries
  pgm.createConstraint("user_artists", "user_artists_user_id_artist_id_key", {
    unique: ["user_id", "artist_id"],
  });
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("user_artists", "update_updated_at_trigger", {
    ifExists: true,
  });

  // Drop constraint
  pgm.dropConstraint("user_artists", "user_artists_user_id_artist_id_key", {
    ifExists: true,
  });

  // Drop indexes
  pgm.dropIndex("user_artists", ["user_id"], { ifExists: true });
  pgm.dropIndex("user_artists", ["artist_id"], { ifExists: true });

  // Drop table
  pgm.dropTable("user_artists", { ifExists: true });
};
