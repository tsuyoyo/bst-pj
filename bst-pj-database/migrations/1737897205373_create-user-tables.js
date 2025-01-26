/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create enum type for external service
  pgm.createType("external_service", [
    "GOOGLE",
    "FACEBOOK",
    "TWITTER",
    "GITHUB",
  ]);

  // Create enum type for follow status
  pgm.createType("follow_status", ["FOLLOWING", "BLOCKED", "REQUESTED"]);

  // Create users table
  pgm.createTable("users", {
    id: "id",
    external_id: { type: "varchar(255)" },
    external_service: { type: "external_service" },
    name: { type: "varchar(30)", notNull: true },
    email: { type: "varchar(255)", notNull: true },
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

  // Create unique index for external_id and external_service combination
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
      references: "areas",
      onDelete: "SET NULL",
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

  // Create user_parts table
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

  // Create user_genres table
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

  // Create follows table
  pgm.createTable("follows", {
    id: "id",
    follower_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    following_id: {
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

  // Create unique indexes
  pgm.createIndex("user_profiles", "user_id", { unique: true });
  pgm.createIndex("user_parts", ["user_id", "part_id"], { unique: true });
  pgm.createIndex("user_genres", ["user_id", "genre_id"], { unique: true });
  pgm.createIndex("follows", ["follower_id", "following_id"], { unique: true });

  // Create triggers for updating updated_at
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
  // Drop triggers
  const tables = ["users", "user_profiles", "follows"];
  tables.forEach((table) => {
    pgm.dropTrigger(table, "update_updated_at_trigger", { ifExists: true });
  });

  // Drop tables
  pgm.dropTable("follows", { ifExists: true });
  pgm.dropTable("user_genres", { ifExists: true });
  pgm.dropTable("user_parts", { ifExists: true });
  pgm.dropTable("user_profiles", { ifExists: true });
  pgm.dropTable("users", { ifExists: true });

  // Drop enum types
  pgm.dropType("external_service", { ifExists: true });
  pgm.dropType("follow_status", { ifExists: true });
};
