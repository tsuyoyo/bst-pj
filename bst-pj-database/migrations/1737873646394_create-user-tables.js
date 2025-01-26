/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create enum types
  pgm.createType("external_service", [
    "google",
    "facebook",
    "twitter",
    "github",
  ]);
  pgm.createType("follow_status", ["following", "blocked", "requested"]);

  // Create users table
  pgm.createTable("users", {
    id: "id",
    external_id: { type: "varchar(255)", notNull: true },
    external_service: { type: "external_service", notNull: true },
    name: { type: "varchar(255)", notNull: true },
    email: { type: "email" },
    icon_url: { type: "text" },
    profile_picture_url: { type: "text" },
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

  // Create unique index on external_id and service combination
  pgm.createIndex("users", ["external_id", "external_service"], {
    unique: true,
  });

  // Create user_profiles table
  pgm.createTable("user_profiles", {
    id: "id",
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    bio: { type: "text" },
    area_id: {
      type: "integer",
      notNull: true,
      references: "areas",
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

  // Create unique index on user_id as there should be only one profile per user
  pgm.createIndex("user_profiles", "user_id", { unique: true });

  // Create user_parts table (Many-to-Many relationship)
  pgm.createTable("user_parts", {
    id: "id",
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    part_id: {
      type: "integer",
      notNull: true,
      references: "parts",
      onDelete: "CASCADE",
    },
    created_at: {
      type: "timestamp",
      notNull: true,
      default: pgm.func("current_timestamp"),
    },
  });

  // Create unique index to prevent duplicate relationships
  pgm.createIndex("user_parts", ["user_id", "part_id"], { unique: true });

  // Create user_genres table (Many-to-Many relationship)
  pgm.createTable("user_genres", {
    id: "id",
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
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
  pgm.createIndex("user_genres", ["user_id", "genre_id"], { unique: true });

  // Create follows table
  pgm.createTable("follows", {
    id: "id",
    follower_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    followee_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    status: { type: "follow_status", notNull: true },
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

  // Create unique index to prevent duplicate relationships
  pgm.createIndex("follows", ["follower_id", "followee_id"], { unique: true });

  // Add updated_at triggers
  const tables = ["users", "user_profiles", "follows"];
  tables.forEach((table) => {
    pgm.createTrigger(table, "update_updated_at_trigger", {
      when: "BEFORE",
      operation: "UPDATE",
      function: "update_updated_at",
      level: "ROW",
    });
  });
};

exports.down = (pgm) => {
  // Drop tables in reverse order
  pgm.dropTable("follows", { ifExists: true, cascade: true });
  pgm.dropTable("user_genres", { ifExists: true, cascade: true });
  pgm.dropTable("user_parts", { ifExists: true, cascade: true });
  pgm.dropTable("user_profiles", { ifExists: true, cascade: true });
  pgm.dropTable("users", { ifExists: true, cascade: true });

  // Drop enum types
  pgm.dropType("follow_status", { ifExists: true });
  pgm.dropType("external_service", { ifExists: true });
};
