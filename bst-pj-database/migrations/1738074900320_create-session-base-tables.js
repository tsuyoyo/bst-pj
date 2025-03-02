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
    "Cancelled",
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
    },
    entry_close_date: {
      type: "timestamp",
    },
    creator_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    // Nullable until studio is set.
    studio_id: {
      type: "integer",
      references: "studios",
      onDelete: "CASCADE",
    },
    // Nullable until studio_room is set.
    studio_room_id: {
      type: "integer",
      references: "studio_rooms",
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
  pgm.createTrigger("sessions", "update_updated_at_trigger", {
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
  pgm.createIndex("sessions", ["creator_id"]);
};

exports.down = (pgm) => {
  // Drop triggers
  pgm.dropTrigger("sessions", "update_updated_at_trigger", { ifExists: true });

  // Drop indexes
  pgm.dropIndex("sessions", ["status"], { ifExists: true });
  pgm.dropIndex("sessions", ["date"], { ifExists: true });
  pgm.dropIndex("sessions", ["entry_open_date"], { ifExists: true });
  pgm.dropIndex("sessions", ["entry_close_date"], { ifExists: true });
  pgm.dropIndex("sessions", ["creator_id"], { ifExists: true });

  // Drop tables
  pgm.dropTable("sessions", { ifExists: true });

  // Drop enum type
  pgm.dropType("session_status", { ifExists: true });
};
