/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create sessions table
  pgm.createTable("sessions", {
    id: "id",
    title: { type: "varchar(255)", notNull: true },
    description: { type: "text" },
    status: { type: "session_status", notNull: true },
    created_by: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    area_id: {
      type: "integer",
      notNull: true,
      references: "areas",
    },
    event_date: { type: "timestamp", notNull: true },
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

  // Create session_parts table
  pgm.createTable("session_parts", {
    id: "id",
    session_id: {
      type: "integer",
      notNull: true,
      references: "sessions",
      onDelete: "CASCADE",
    },
    part_id: {
      type: "integer",
      notNull: true,
      references: "parts",
      onDelete: "CASCADE",
    },
    capacity: { type: "integer", notNull: true },
    description: { type: "text" },
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

  // Create session_songs table
  pgm.createTable("session_songs", {
    id: "id",
    session_id: {
      type: "integer",
      notNull: true,
      references: "sessions",
      onDelete: "CASCADE",
    },
    title: { type: "varchar(255)", notNull: true },
    artist_id: {
      type: "integer",
      references: "artists",
      onDelete: "SET NULL",
    },
    description: { type: "text" },
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

  // Create session_participants table
  pgm.createTable("session_participants", {
    id: "id",
    session_id: {
      type: "integer",
      notNull: true,
      references: "sessions",
      onDelete: "CASCADE",
    },
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
    status: { type: "text", notNull: true },
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

  // Create session_song_entries table
  pgm.createTable("session_song_entries", {
    id: "id",
    session_song_id: {
      type: "integer",
      notNull: true,
      references: "session_songs",
      onDelete: "CASCADE",
    },
    participant_id: {
      type: "integer",
      notNull: true,
      references: "session_participants",
      onDelete: "CASCADE",
    },
    created_at: {
      type: "timestamp",
      notNull: true,
      default: pgm.func("current_timestamp"),
    },
  });

  // Create session_resources table
  pgm.createTable("session_resources", {
    id: "id",
    session_id: {
      type: "integer",
      notNull: true,
      references: "sessions",
      onDelete: "CASCADE",
    },
    session_song_id: {
      type: "integer",
      references: "session_songs",
      onDelete: "CASCADE",
    },
    type: { type: "resource_type", notNull: true },
    url: { type: "text", notNull: true },
    name: { type: "varchar(255)", notNull: true },
    description: { type: "text" },
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

  // Create session_feedbacks table
  pgm.createTable("session_feedbacks", {
    id: "id",
    session_id: {
      type: "integer",
      notNull: true,
      references: "sessions",
      onDelete: "CASCADE",
    },
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    rating: { type: "integer", notNull: true },
    comment: { type: "text" },
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
  pgm.createIndex("session_parts", ["session_id", "part_id"], { unique: true });
  pgm.createIndex("session_participants", ["session_id", "user_id"], {
    unique: true,
  });
  pgm.createIndex(
    "session_song_entries",
    ["session_song_id", "participant_id"],
    { unique: true }
  );
  pgm.createIndex("session_feedbacks", ["session_id", "user_id"], {
    unique: true,
  });

  // Add updated_at triggers
  const tables = [
    "sessions",
    "session_parts",
    "session_songs",
    "session_participants",
    "session_resources",
    "session_feedbacks",
  ];
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
  pgm.dropTable("session_feedbacks", { ifExists: true, cascade: true });
  pgm.dropTable("session_resources", { ifExists: true, cascade: true });
  pgm.dropTable("session_song_entries", { ifExists: true, cascade: true });
  pgm.dropTable("session_participants", { ifExists: true, cascade: true });
  pgm.dropTable("session_songs", { ifExists: true, cascade: true });
  pgm.dropTable("session_parts", { ifExists: true, cascade: true });
  pgm.dropTable("sessions", { ifExists: true, cascade: true });
};
