/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create enum type for activity type
  pgm.createType("activity_type", ["SongPerformance", "Party"]);

  // Create session_timetables table
  pgm.createTable("session_timetables", {
    id: "id",
    session_id: {
      type: "integer",
      notNull: true,
      references: "sessions",
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

  // Create activities table
  pgm.createTable("activities", {
    id: "id",
    session_timetable_id: {
      type: "integer",
      notNull: true,
      references: "session_timetables",
      onDelete: "CASCADE",
    },
    type: {
      type: "activity_type",
      notNull: true,
      comment: "活動の種類 (例: SongPerformance, Party)",
    },
    start_time: {
      type: "timestamp",
      notNull: true,
    },
    end_time: {
      type: "timestamp",
      notNull: true,
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

  // Create song_performances table
  pgm.createTable("song_performances", {
    id: "id",
    activity_id: {
      type: "integer",
      notNull: true,
      references: "activities",
      onDelete: "CASCADE",
    },
    song_id: {
      type: "integer",
      notNull: true,
      references: "songs",
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

  // Create triggers for updating updated_at
  pgm.createTrigger("session_timetables", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  pgm.createTrigger("activities", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  pgm.createTrigger("song_performances", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("session_timetables", ["session_id"]);
  pgm.createIndex("activities", ["session_timetable_id"]);
  pgm.createIndex("activities", ["type"]);
  pgm.createIndex("activities", ["start_time"]);
  pgm.createIndex("activities", ["end_time"]);
  pgm.createIndex("song_performances", ["activity_id"]);
  pgm.createIndex("song_performances", ["song_id"]);
};

exports.down = (pgm) => {
  // Drop triggers
  pgm.dropTrigger("session_timetables", "update_updated_at_trigger", {
    ifExists: true,
  });
  pgm.dropTrigger("activities", "update_updated_at_trigger", {
    ifExists: true,
  });
  pgm.dropTrigger("song_performances", "update_updated_at_trigger", {
    ifExists: true,
  });

  // Drop indexes
  pgm.dropIndex("session_timetables", ["session_id"], { ifExists: true });
  pgm.dropIndex("activities", ["session_timetable_id"], { ifExists: true });
  pgm.dropIndex("activities", ["type"], { ifExists: true });
  pgm.dropIndex("activities", ["start_time"], { ifExists: true });
  pgm.dropIndex("activities", ["end_time"], { ifExists: true });
  pgm.dropIndex("song_performances", ["activity_id"], { ifExists: true });
  pgm.dropIndex("song_performances", ["song_id"], { ifExists: true });

  // Drop tables
  pgm.dropTable("song_performances", { ifExists: true });
  pgm.dropTable("activities", { ifExists: true });
  pgm.dropTable("session_timetables", { ifExists: true });

  // Drop enum type
  pgm.dropType("activity_type", { ifExists: true });
};
