/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create enum type for session status
  pgm.createType("session_status", [
    "BeforeEntry",
    "EntryOpen",
    "EntryClosed",
    "Approaching",
    "Ongoing",
    "Completed",
  ]);

  // Create sessions table
  pgm.createTable("sessions", {
    id: "id",
    title: {
      type: "varchar(255)",
      notNull: true,
    },
    status: {
      type: "session_status",
      notNull: true,
      default: "BeforeEntry",
    },
    description: { type: "text" },
    date: {
      type: "timestamp",
      notNull: true,
    },
    entry_open_date: {
      type: "timestamp",
      notNull: true,
    },
    entry_close_date: {
      type: "timestamp",
      notNull: true,
    },
    organizer_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
      comment: "作成者のUserID",
    },
    location_id: {
      type: "integer",
      notNull: true,
      references: "locations",
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

  // Create session_roles table
  pgm.createTable("session_roles", {
    id: "id",
    name: {
      type: "varchar(100)",
      notNull: true,
      comment: "役割 (例: カメラ撮影係などセッションに応じて設定)",
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

  // Create triggers for updating updated_at
  pgm.createTrigger("sessions", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  pgm.createTrigger("session_roles", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("sessions", ["status"]);
  pgm.createIndex("sessions", ["date"]);
  pgm.createIndex("sessions", ["entry_open_date"]);
  pgm.createIndex("sessions", ["entry_close_date"]);
  pgm.createIndex("sessions", ["organizer_id"]);
  pgm.createIndex("sessions", ["location_id"]);
  pgm.createIndex("session_roles", ["name"]);
};

exports.down = (pgm) => {
  // Drop triggers
  pgm.dropTrigger("sessions", "update_updated_at_trigger", { ifExists: true });
  pgm.dropTrigger("session_roles", "update_updated_at_trigger", {
    ifExists: true,
  });

  // Drop indexes
  pgm.dropIndex("sessions", ["status"], { ifExists: true });
  pgm.dropIndex("sessions", ["date"], { ifExists: true });
  pgm.dropIndex("sessions", ["entry_open_date"], { ifExists: true });
  pgm.dropIndex("sessions", ["entry_close_date"], { ifExists: true });
  pgm.dropIndex("sessions", ["organizer_id"], { ifExists: true });
  pgm.dropIndex("sessions", ["location_id"], { ifExists: true });
  pgm.dropIndex("session_roles", ["name"], { ifExists: true });

  // Drop tables
  pgm.dropTable("session_roles", { ifExists: true });
  pgm.dropTable("sessions", { ifExists: true });

  // Drop enum type
  pgm.dropType("session_status", { ifExists: true });
};
