/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create enum type for party participant status
  pgm.createType("party_participant_status", [
    "Confirmed",
    "Pending",
    "Cancelled",
  ]);

  // Create parties table
  pgm.createTable("parties", {
    id: "id",
    activity_id: {
      type: "integer",
      notNull: true,
      references: "activities",
      onDelete: "CASCADE",
    },
    location_id: {
      type: "integer",
      notNull: true,
      references: "locations",
      onDelete: "CASCADE",
    },
    fee: {
      type: "integer",
      notNull: true,
      comment: "参加費（円）",
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

  // Create party_hosts table
  pgm.createTable("party_hosts", {
    id: "id",
    party_id: {
      type: "integer",
      notNull: true,
      references: "parties",
      onDelete: "CASCADE",
    },
    session_participant_id: {
      type: "integer",
      notNull: true,
      references: "session_participants",
      onDelete: "CASCADE",
    },
    role: {
      type: "varchar(50)",
      comment: "ホストの役割（例: メインホスト、補助ホスト）",
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

  // Create party_participants table
  pgm.createTable("party_participants", {
    id: "id",
    party_id: {
      type: "integer",
      notNull: true,
      references: "parties",
      onDelete: "CASCADE",
    },
    session_participant_id: {
      type: "integer",
      notNull: true,
      references: "session_participants",
      onDelete: "CASCADE",
    },
    status: {
      type: "party_participant_status",
      notNull: true,
      default: "Pending",
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
  pgm.createTrigger("parties", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  pgm.createTrigger("party_hosts", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  pgm.createTrigger("party_participants", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("parties", ["activity_id"]);
  pgm.createIndex("parties", ["location_id"]);
  pgm.createIndex("party_hosts", ["party_id"]);
  pgm.createIndex("party_hosts", ["session_participant_id"]);
  pgm.createIndex("party_participants", ["party_id"]);
  pgm.createIndex("party_participants", ["session_participant_id"]);

  // Create unique constraints
  pgm.createConstraint(
    "party_hosts",
    "party_hosts_party_id_session_participant_id_key",
    {
      unique: ["party_id", "session_participant_id"],
    }
  );

  pgm.createConstraint(
    "party_participants",
    "party_participants_party_id_session_participant_id_key",
    {
      unique: ["party_id", "session_participant_id"],
    }
  );
};

exports.down = (pgm) => {
  // Drop triggers
  pgm.dropTrigger("parties", "update_updated_at_trigger", {
    ifExists: true,
  });
  pgm.dropTrigger("party_hosts", "update_updated_at_trigger", {
    ifExists: true,
  });
  pgm.dropTrigger("party_participants", "update_updated_at_trigger", {
    ifExists: true,
  });

  // Drop constraints
  pgm.dropConstraint(
    "party_hosts",
    "party_hosts_party_id_session_participant_id_key",
    {
      ifExists: true,
    }
  );
  pgm.dropConstraint(
    "party_participants",
    "party_participants_party_id_session_participant_id_key",
    {
      ifExists: true,
    }
  );

  // Drop indexes
  pgm.dropIndex("parties", ["activity_id"], { ifExists: true });
  pgm.dropIndex("parties", ["location_id"], { ifExists: true });
  pgm.dropIndex("party_hosts", ["party_id"], { ifExists: true });
  pgm.dropIndex("party_hosts", ["session_participant_id"], { ifExists: true });
  pgm.dropIndex("party_participants", ["party_id"], { ifExists: true });
  pgm.dropIndex("party_participants", ["session_participant_id"], {
    ifExists: true,
  });

  // Drop tables
  pgm.dropTable("party_participants", { ifExists: true });
  pgm.dropTable("party_hosts", { ifExists: true });
  pgm.dropTable("parties", { ifExists: true });

  // Drop enum type
  pgm.dropType("party_participant_status", { ifExists: true });
};
