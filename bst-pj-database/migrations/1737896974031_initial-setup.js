/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create updated_at function
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

  // Create Area table
  pgm.createTable("areas", {
    id: "id",
    name: { type: "varchar(30)", notNull: true },
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

  // Create Genre table
  pgm.createTable("genres", {
    id: "id",
    name: { type: "varchar(255)", notNull: true },
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

  // Create Part table
  pgm.createTable("parts", {
    id: "id",
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

  // Create triggers for updating updated_at
  const tables = ["areas", "genres", "parts"];
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
  const tables = ["areas", "genres", "parts"];
  tables.forEach((table) => {
    pgm.dropTrigger(table, "update_updated_at_trigger", { ifExists: true });
  });

  // Drop tables
  pgm.dropTable("parts", { ifExists: true });
  pgm.dropTable("genres", { ifExists: true });
  pgm.dropTable("areas", { ifExists: true });

  // Drop function
  pgm.dropFunction("update_updated_at", [], { ifExists: true });
};
