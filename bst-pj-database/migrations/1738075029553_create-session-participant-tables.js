/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create enum type for participant status
  pgm.createType("session_participant_status", [
    "Confirmed",
    "Pending",
    "Cancelled",
  ]);

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
    role_id: {
      type: "integer",
      references: "session_roles",
      onDelete: "SET NULL",
      comment: "Optional",
    },
    status: {
      type: "session_participant_status",
      notNull: true,
      default: "Pending",
      comment: "参加ステータス（例: 確定、キャンセル）",
    },
    is_admin: {
      type: "boolean",
      notNull: true,
      default: false,
      comment: "管理者フラグ",
    },
    is_observer: {
      type: "boolean",
      notNull: true,
      default: false,
      comment: "観察者フラグ (演奏しない)",
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

  // Create participant_parts table
  pgm.createTable("participant_parts", {
    id: "id",
    session_participant_id: {
      type: "integer",
      notNull: true,
      references: "session_participants",
      onDelete: "CASCADE",
    },
    session_part_id: {
      type: "integer",
      notNull: true,
      references: "session_parts",
      onDelete: "CASCADE",
    },
    is_primary: {
      type: "boolean",
      notNull: true,
      default: false,
      comment: "このPartがメインであることを示す",
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

  // Create entries table
  pgm.createTable("entries", {
    id: "id",
    song_performance_id: {
      type: "integer",
      notNull: true,
      references: "song_performances",
      onDelete: "CASCADE",
    },
    session_participant_id: {
      type: "integer",
      notNull: true,
      references: "session_participants",
      onDelete: "CASCADE",
    },
    session_part_id: {
      type: "integer",
      notNull: true,
      references: "session_parts",
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
  pgm.createTrigger("session_participants", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  pgm.createTrigger("participant_parts", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  pgm.createTrigger("entries", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("session_participants", ["session_id"]);
  pgm.createIndex("session_participants", ["user_id"]);
  pgm.createIndex("session_participants", ["role_id"]);
  pgm.createIndex("session_participants", ["status"]);
  pgm.createIndex("participant_parts", ["session_participant_id"]);
  pgm.createIndex("participant_parts", ["session_part_id"]);
  pgm.createIndex("entries", ["song_performance_id"]);
  pgm.createIndex("entries", ["session_participant_id"]);
  pgm.createIndex("entries", ["session_part_id"]);

  // Create unique constraints
  pgm.createConstraint(
    "session_participants",
    "session_participants_session_id_user_id_key",
    {
      unique: ["session_id", "user_id"],
    }
  );
  pgm.createConstraint(
    "participant_parts",
    "participant_parts_session_participant_id_session_part_id_key",
    {
      unique: ["session_participant_id", "session_part_id"],
    }
  );
  pgm.createConstraint(
    "entries",
    "entries_song_performance_id_session_participant_id_session_part_id_key",
    {
      unique: [
        "song_performance_id",
        "session_participant_id",
        "session_part_id",
      ],
    }
  );
};

exports.down = (pgm) => {
  // Drop triggers
  pgm.dropTrigger("session_participants", "update_updated_at_trigger", {
    ifExists: true,
  });
  pgm.dropTrigger("participant_parts", "update_updated_at_trigger", {
    ifExists: true,
  });
  pgm.dropTrigger("entries", "update_updated_at_trigger", { ifExists: true });

  // Drop constraints
  pgm.dropConstraint(
    "session_participants",
    "session_participants_session_id_user_id_key",
    { ifExists: true }
  );
  pgm.dropConstraint(
    "participant_parts",
    "participant_parts_session_participant_id_session_part_id_key",
    { ifExists: true }
  );
  pgm.dropConstraint(
    "entries",
    "entries_song_performance_id_session_participant_id_session_part_id_key",
    { ifExists: true }
  );

  // Drop indexes
  pgm.dropIndex("session_participants", ["session_id"], { ifExists: true });
  pgm.dropIndex("session_participants", ["user_id"], { ifExists: true });
  pgm.dropIndex("session_participants", ["role_id"], { ifExists: true });
  pgm.dropIndex("session_participants", ["status"], { ifExists: true });
  pgm.dropIndex("participant_parts", ["session_participant_id"], {
    ifExists: true,
  });
  pgm.dropIndex("participant_parts", ["session_part_id"], { ifExists: true });
  pgm.dropIndex("entries", ["song_performance_id"], { ifExists: true });
  pgm.dropIndex("entries", ["session_participant_id"], { ifExists: true });
  pgm.dropIndex("entries", ["session_part_id"], { ifExists: true });

  // Drop tables
  pgm.dropTable("entries", { ifExists: true });
  pgm.dropTable("participant_parts", { ifExists: true });
  pgm.dropTable("session_participants", { ifExists: true });

  // Drop enum type
  pgm.dropType("session_participant_status", { ifExists: true });
};
