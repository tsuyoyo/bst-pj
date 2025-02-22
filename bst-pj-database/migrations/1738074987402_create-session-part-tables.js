/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create session_parts table
  pgm.createTable("session_parts", {
    id: "id",
    session_id: {
      type: "integer",
      notNull: true,
      references: "sessions",
      onDelete: "CASCADE",
    },
    name: {
      type: "varchar(100)",
      notNull: true,
      comment:
        "パート名 (例: Gt1, Gt2 のようなケースのためにSessionPartもNameを持つ)",
    },
    part_id: {
      type: "integer",
      notNull: true,
      references: "parts",
      onDelete: "CASCADE",
    },
    display_order: {
      type: "integer",
      notNull: true,
      comment: "表示順",
    },
    max_entry: {
      type: "integer",
      notNull: true,
      comment: "エントリーできる上限 (進行と共に変更可能)",
    },
    transition_cost: {
      type: "integer",
      notNull: false,
      comment: "転換コスト (セッションごとに変わる)",
    },
    notes: { type: "text" },
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

  // Create required_parts table
  pgm.createTable("required_parts", {
    id: "id",
    session_song_id: {
      type: "integer",
      notNull: true,
      references: "session_songs",
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
  pgm.createTrigger("session_parts", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  pgm.createTrigger("required_parts", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("session_parts", ["session_id"]);
  pgm.createIndex("session_parts", ["part_id"]);
  pgm.createIndex("session_parts", ["display_order"]);
  pgm.createIndex("required_parts", ["session_song_id"]);
  pgm.createIndex("required_parts", ["session_part_id"]);

  // Create unique constraint for session_song and session_part combination
  pgm.createConstraint(
    "required_parts",
    "required_parts_session_song_id_session_part_id_key",
    {
      unique: ["session_song_id", "session_part_id"],
    }
  );
};

exports.down = (pgm) => {
  // Drop triggers
  pgm.dropTrigger("session_parts", "update_updated_at_trigger", {
    ifExists: true,
  });
  pgm.dropTrigger("required_parts", "update_updated_at_trigger", {
    ifExists: true,
  });

  // Drop constraint
  pgm.dropConstraint(
    "required_parts",
    "required_parts_session_song_id_session_part_id_key",
    { ifExists: true }
  );

  // Drop indexes
  pgm.dropIndex("session_parts", ["session_id"], { ifExists: true });
  pgm.dropIndex("session_parts", ["part_id"], { ifExists: true });
  pgm.dropIndex("session_parts", ["display_order"], { ifExists: true });
  pgm.dropIndex("required_parts", ["session_song_id"], { ifExists: true });
  pgm.dropIndex("required_parts", ["session_part_id"], { ifExists: true });

  // Drop tables
  pgm.dropTable("required_parts", { ifExists: true });
  pgm.dropTable("session_parts", { ifExists: true });
};
