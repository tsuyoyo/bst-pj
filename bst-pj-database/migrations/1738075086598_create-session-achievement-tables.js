/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create session_achievement_logs table
  pgm.createTable("session_achievement_logs", {
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

  // Create trigger for updating updated_at
  pgm.createTrigger("session_achievement_logs", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create index
  pgm.createIndex("session_achievement_logs", ["session_id"]);

  // Create unique constraint
  pgm.createConstraint(
    "session_achievement_logs",
    "session_achievement_logs_session_id_key",
    {
      unique: ["session_id"],
    }
  );
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("session_achievement_logs", "update_updated_at_trigger", {
    ifExists: true,
  });

  // Drop constraint
  pgm.dropConstraint(
    "session_achievement_logs",
    "session_achievement_logs_session_id_key",
    { ifExists: true }
  );

  // Drop index
  pgm.dropIndex("session_achievement_logs", ["session_id"], { ifExists: true });

  // Drop table
  pgm.dropTable("session_achievement_logs", { ifExists: true });
};
