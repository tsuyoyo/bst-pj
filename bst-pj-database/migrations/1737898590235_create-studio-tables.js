/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Create studios table
  pgm.createTable("studios", {
    id: "id",
    name: {
      type: "varchar(255)",
      notNull: true,
    },
    description: { type: "text" },
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

  // Create studio_rooms table
  pgm.createTable("studio_rooms", {
    id: "id",
    studio_id: {
      type: "integer",
      notNull: true,
      references: "studios",
      onDelete: "CASCADE",
    },
    name: {
      type: "varchar(255)",
      notNull: true,
    },
    capacity: {
      type: "integer",
      notNull: true,
    },
    price: {
      type: "integer",
      notNull: true,
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

  // Create studio_room_infos table
  pgm.createTable("studio_room_infos", {
    id: "id",
    studio_room_id: {
      type: "integer",
      notNull: true,
      references: "studio_rooms",
      onDelete: "CASCADE",
    },
    type: {
      type: "varchar(50)",
      notNull: true,
      comment: "情報の種類 (例: Equipment)",
    },
    key: {
      type: "varchar(100)",
      notNull: true,
      comment: "情報のキー (例: ギターアンプ)",
    },
    value: {
      type: "varchar(255)",
      notNull: true,
      comment: "情報の値 (例: Marshall)",
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
  const tables = ["studios", "studio_rooms", "studio_room_infos"];
  tables.forEach((table) => {
    pgm.createTrigger(table, "update_updated_at_trigger", {
      when: "BEFORE",
      operation: "UPDATE",
      function: "update_updated_at",
      level: "ROW",
    });
  });

  // Create indexes
  pgm.createIndex("studios", ["location_id"]);
  pgm.createIndex("studio_rooms", ["studio_id"]);
  pgm.createIndex("studio_room_infos", ["studio_room_id"]);
  pgm.createIndex("studio_room_infos", ["type"]);
};

exports.down = (pgm) => {
  // Drop triggers
  const tables = ["studios", "studio_rooms", "studio_room_infos"];
  tables.forEach((table) => {
    pgm.dropTrigger(table, "update_updated_at_trigger", { ifExists: true });
  });

  // Drop indexes
  pgm.dropIndex("studios", ["location_id"], { ifExists: true });
  pgm.dropIndex("studio_rooms", ["studio_id"], { ifExists: true });
  pgm.dropIndex("studio_room_infos", ["studio_room_id"], { ifExists: true });
  pgm.dropIndex("studio_room_infos", ["type"], { ifExists: true });

  // Drop tables
  pgm.dropTable("studio_room_infos", { ifExists: true });
  pgm.dropTable("studio_rooms", { ifExists: true });
  pgm.dropTable("studios", { ifExists: true });
};
