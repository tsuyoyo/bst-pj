/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create enum type for target_type
  pgm.createType("reaction_target_type", ["Thread", "Comment"]);

  // Create reactions table
  pgm.createTable("reactions", {
    id: "id",
    target_type: {
      type: "reaction_target_type",
      notNull: true,
    },
    target_id: {
      type: "integer",
      notNull: true,
    },
    user_id: {
      type: "integer",
      notNull: true,
      references: "users",
      onDelete: "CASCADE",
    },
    reaction_type_id: {
      type: "integer",
      notNull: true,
      references: "reaction_types",
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
  pgm.createTrigger("reactions", "update_updated_at_trigger", {
    when: "BEFORE",
    operation: "UPDATE",
    function: "update_updated_at",
    level: "ROW",
  });

  // Create indexes
  pgm.createIndex("reactions", ["target_type", "target_id"]);
  pgm.createIndex("reactions", ["user_id"]);
  pgm.createIndex("reactions", ["reaction_type_id"]);

  // Create unique constraint to prevent duplicate reactions
  pgm.createConstraint(
    "reactions",
    "reactions_target_type_target_id_user_id_reaction_type_id_key",
    {
      unique: ["target_type", "target_id", "user_id", "reaction_type_id"],
    }
  );
};

exports.down = (pgm) => {
  // Drop trigger
  pgm.dropTrigger("reactions", "update_updated_at_trigger", { ifExists: true });

  // Drop constraint
  pgm.dropConstraint(
    "reactions",
    "reactions_target_type_target_id_user_id_reaction_type_id_key",
    { ifExists: true }
  );

  // Drop indexes
  pgm.dropIndex("reactions", ["target_type", "target_id"], { ifExists: true });
  pgm.dropIndex("reactions", ["user_id"], { ifExists: true });
  pgm.dropIndex("reactions", ["reaction_type_id"], { ifExists: true });

  // Drop table
  pgm.dropTable("reactions", { ifExists: true });

  // Drop enum type
  pgm.dropType("reaction_target_type", { ifExists: true });
};
