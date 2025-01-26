/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create party_types enum
  pgm.createType("party_type", ["after_session", "social_gathering"]);

  // Create party_status enum
  pgm.createType("party_status", ["planning", "confirmed", "cancelled"]);

  // Create parties table
  pgm.createTable("parties", {
    id: "id",
    title: { type: "varchar(255)", notNull: true },
    description: { type: "text" },
    type: { type: "party_type", notNull: true },
    status: { type: "party_status", notNull: true },
    session_id: {
      type: "integer",
      references: "sessions",
      onDelete: "CASCADE",
    },
    created_by: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    event_date: { type: "timestamp", notNull: true },
    venue_name: { type: "varchar(255)", notNull: true },
    venue_address: { type: "text", notNull: true },
    venue_url: { type: "text" },
    fee: { type: "integer" },
    capacity: { type: "integer" },
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

  // Create party_participants table
  pgm.createTable("party_participants", {
    id: "id",
    party_id: {
      type: "integer",
      notNull: true,
      references: "parties",
      onDelete: "CASCADE",
    },
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    status: { type: "text", notNull: true },
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

  // Create party_resources table
  pgm.createTable("party_resources", {
    id: "id",
    party_id: {
      type: "integer",
      notNull: true,
      references: "parties",
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

  // Create party_payments table
  pgm.createTable("party_payments", {
    id: "id",
    party_id: {
      type: "integer",
      notNull: true,
      references: "parties",
      onDelete: "CASCADE",
    },
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    amount: { type: "integer", notNull: true },
    status: { type: "text", notNull: true },
    payment_method: { type: "text" },
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
  pgm.createIndex("party_participants", ["party_id", "user_id"], {
    unique: true,
  });
  pgm.createIndex("party_payments", ["party_id", "user_id"], { unique: true });

  // Add updated_at triggers
  const tables = [
    "parties",
    "party_participants",
    "party_resources",
    "party_payments",
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
  pgm.dropTable("party_payments", { ifExists: true, cascade: true });
  pgm.dropTable("party_resources", { ifExists: true, cascade: true });
  pgm.dropTable("party_participants", { ifExists: true, cascade: true });
  pgm.dropTable("parties", { ifExists: true, cascade: true });

  // Drop enum types
  pgm.dropType("party_status", { ifExists: true });
  pgm.dropType("party_type", { ifExists: true });
};
