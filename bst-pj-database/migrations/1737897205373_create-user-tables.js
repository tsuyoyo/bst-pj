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
    external_id: {
      type: "varchar(255)",
      notNull: false,
    },
    // Note: When to implement OAuth, external token column will be required.
    external_service: {
      type: "external_service",
      notNull: false,
    },
    name: {
      type: "varchar(30)",
      notNull: true,
    },
    email: {
      type: "varchar(255)",
      notNull: true,
      unique: true,
    },
    password: {
      type: "varchar(255)",
      notNull: true,
    },
    icon_url: {
      type: "text",
      notNull: false,
    },
    profile_picture_url: {
      type: "text",
      notNull: false,
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
  pgm.createTrigger("users", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("users", ["email"]);
  pgm.createIndex("users", ["external_service", "external_id"]);

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
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("users", "update_updated_at_trigger", { ifExists: true });

  // Drop indexes
  pgm.dropIndex("users", ["email"], { ifExists: true });
  pgm.dropIndex("users", ["external_service", "external_id"], {
    ifExists: true,
  });

  // Drop table
  pgm.dropTable("users", { ifExists: true });

  // Drop enum type
  pgm.dropType("external_service", { ifExists: true });

  // Drop tables
  pgm.dropTable("follows", { ifExists: true });
  pgm.dropTable("user_genres", { ifExists: true });
  pgm.dropTable("user_parts", { ifExists: true });
  pgm.dropTable("user_profiles", { ifExists: true });

  // Drop enum types
  pgm.dropType("follow_status", { ifExists: true });
};
