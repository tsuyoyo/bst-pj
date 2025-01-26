/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create custom domains
  pgm.createDomain("email", "text", {
    check: "VALUE ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$'",
  });

  // Create enum types
  pgm.createType("user_role", ["admin", "user"]);
  pgm.createType("resource_type", ["image", "video", "document", "link"]);
  pgm.createType("session_status", [
    "draft",
    "entry_open",
    "entry_closed",
    "in_progress",
    "completed",
    "cancelled",
  ]);

  // Create updated_at trigger function
  pgm.createFunction(
    "update_updated_at",
    [],
    {
      returns: "trigger",
      language: "plpgsql",
    },
    `
    BEGIN
      NEW.updated_at = CURRENT_TIMESTAMP;
      RETURN NEW;
    END;
    `
  );

  // Create base tables
  // Genre table
  pgm.createTable("genres", {
    id: "id",
    name: { type: "varchar(100)", notNull: true },
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

  pgm.createIndex("genres", "name", { unique: true });

  // Area table (Prefecture)
  pgm.createTable("areas", {
    id: "id",
    name: { type: "varchar(100)", notNull: true },
    prefecture_id: { type: "integer", notNull: true },
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

  pgm.createIndex("areas", "prefecture_id");
  pgm.createIndex("areas", "name");

  // Part table (Instruments, Vocals, etc.)
  pgm.createTable("parts", {
    id: "id",
    name: { type: "varchar(100)", notNull: true },
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

  pgm.createIndex("parts", "name", { unique: true });

  // Add updated_at triggers to all tables
  const tables = ["genres", "areas", "parts"];
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
  const tables = ["genres", "areas", "parts"];
  tables.forEach((table) => {
    pgm.dropTrigger(table, "update_updated_at_trigger", { ifExists: true });
  });

  // Drop tables
  pgm.dropTable("parts", { ifExists: true, cascade: true });
  pgm.dropTable("areas", { ifExists: true, cascade: true });
  pgm.dropTable("genres", { ifExists: true, cascade: true });

  // Drop functions
  pgm.dropFunction("update_updated_at", [], { ifExists: true });

  // Drop enum types
  pgm.dropType("session_status", { ifExists: true });
  pgm.dropType("resource_type", { ifExists: true });
  pgm.dropType("user_role", { ifExists: true });

  // Drop domains
  pgm.dropDomain("email", { ifExists: true });
};
