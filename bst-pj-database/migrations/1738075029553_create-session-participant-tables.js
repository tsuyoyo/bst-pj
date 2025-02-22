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
    is_player: {
      type: "boolean",
      notNull: true,
      default: false,
      comment: "falseだったら「演奏はしないけど参加する人」",
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

  // Create session_participant_parts table
  pgm.createTable("session_participant_parts", {
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

  // Create session_song_entries table
  pgm.createTable("session_song_entries", {
    id: "id",
    session_song_id: {
      type: "integer",
      notNull: true,
      references: "session_songs",
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
    comment: {
      type: "text",
      comment: "コメント",
      default: "",
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

  pgm.createTrigger("session_participant_parts", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  pgm.createTrigger("session_song_entries", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("session_participants", ["session_id"]);
  pgm.createIndex("session_participants", ["user_id"]);
  pgm.createIndex("session_participants", ["status"]);
  pgm.createIndex("session_participant_parts", ["session_participant_id"]);
  pgm.createIndex("session_participant_parts", ["session_part_id"]);
  pgm.createIndex("session_song_entries", ["session_song_id"]);
  pgm.createIndex("session_song_entries", ["session_participant_id"]);
  pgm.createIndex("session_song_entries", ["session_part_id"]);

  // Create unique constraints
  pgm.createConstraint(
    "session_participants",
    "session_participants_session_id_user_id_key",
    {
      unique: ["session_id", "user_id"],
    }
  );
  pgm.createConstraint(
    "session_participant_parts",
    "session_participant_parts_session_participant_id_session_part_id_key",
    {
      unique: ["session_participant_id", "session_part_id"],
    }
  );
  pgm.createConstraint(
    "session_song_entries",
    "session_song_entries_session_song_id_session_participant_id_session_part_id_key",
    {
      unique: ["session_song_id", "session_participant_id", "session_part_id"],
    }
  );
};

exports.down = (pgm) => {
  // Drop triggers
  pgm.dropTrigger("session_participants", "update_updated_at_trigger", {
    ifExists: true,
  });
  pgm.dropTrigger("session_participant_parts", "update_updated_at_trigger", {
    ifExists: true,
  });
  pgm.dropTrigger("session_song_entries", "update_updated_at_trigger", {
    ifExists: true,
  });

  // Drop constraints
  pgm.dropConstraint(
    "session_participants",
    "session_participants_session_id_user_id_key",
    { ifExists: true }
  );
  pgm.dropConstraint(
    "session_participant_parts",
    "session_participant_parts_session_participant_id_session_part_id_key",
    { ifExists: true }
  );
  pgm.dropConstraint(
    "session_song_entries",
    "session_song_entries_session_song_id_session_participant_id_session_part_id_key",
    { ifExists: true }
  );

  // Drop indexes
  pgm.dropIndex("session_participants", ["session_id"], { ifExists: true });
  pgm.dropIndex("session_participants", ["user_id"], { ifExists: true });
  pgm.dropIndex("session_participants", ["status"], { ifExists: true });
  pgm.dropIndex("session_participant_parts", ["session_participant_id"], {
    ifExists: true,
  });
  pgm.dropIndex("session_participant_parts", ["session_part_id"], {
    ifExists: true,
  });
  pgm.dropIndex("session_song_entries", ["session_song_id"], {
    ifExists: true,
  });
  pgm.dropIndex("session_song_entries", ["session_participant_id"], {
    ifExists: true,
  });
  pgm.dropIndex("session_song_entries", ["session_part_id"], {
    ifExists: true,
  });

  // Drop tables
  pgm.dropTable("session_song_entries", { ifExists: true });
  pgm.dropTable("session_participant_parts", { ifExists: true });
  pgm.dropTable("session_participants", { ifExists: true });

  // Drop enum type
  pgm.dropType("session_participant_status", { ifExists: true });
};
