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

  // Create raise_exception function
  pgm.createFunction(
    "raise_exception",
    [],
    {
      returns: "trigger",
      language: "plpgsql",
    },
    `
    BEGIN
      RAISE EXCEPTION 'This operation is not allowed';
      RETURN NULL;
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

  // Insert initial data for 47 prefectures
  const prefectures = [
    { id: 1, name: "北海道" },
    { id: 2, name: "青森県" },
    { id: 3, name: "岩手県" },
    { id: 4, name: "宮城県" },
    { id: 5, name: "秋田県" },
    { id: 6, name: "山形県" },
    { id: 7, name: "福島県" },
    { id: 8, name: "茨城県" },
    { id: 9, name: "栃木県" },
    { id: 10, name: "群馬県" },
    { id: 11, name: "埼玉県" },
    { id: 12, name: "千葉県" },
    { id: 13, name: "東京都" },
    { id: 14, name: "神奈川県" },
    { id: 15, name: "新潟県" },
    { id: 16, name: "富山県" },
    { id: 17, name: "石川県" },
    { id: 18, name: "福井県" },
    { id: 19, name: "山梨県" },
    { id: 20, name: "長野県" },
    { id: 21, name: "岐阜県" },
    { id: 22, name: "静岡県" },
    { id: 23, name: "愛知県" },
    { id: 24, name: "三重県" },
    { id: 25, name: "滋賀県" },
    { id: 26, name: "京都府" },
    { id: 27, name: "大阪府" },
    { id: 28, name: "兵庫県" },
    { id: 29, name: "奈良県" },
    { id: 30, name: "和歌山県" },
    { id: 31, name: "鳥取県" },
    { id: 32, name: "島根県" },
    { id: 33, name: "岡山県" },
    { id: 34, name: "広島県" },
    { id: 35, name: "山口県" },
    { id: 36, name: "徳島県" },
    { id: 37, name: "香川県" },
    { id: 38, name: "愛媛県" },
    { id: 39, name: "高知県" },
    { id: 40, name: "福岡県" },
    { id: 41, name: "佐賀県" },
    { id: 42, name: "長崎県" },
    { id: 43, name: "熊本県" },
    { id: 44, name: "大分県" },
    { id: 45, name: "宮崎県" },
    { id: 46, name: "鹿児島県" },
    { id: 47, name: "沖縄県" },
  ];

  prefectures.forEach(({ id, name }) => {
    pgm.sql(
      `INSERT INTO areas (id, name, prefecture_id) VALUES (${id}, '${name}', ${id})`
    );
  });

  // Create trigger to prevent updates and deletes
  pgm.createTrigger("areas", "prevent_updates_deletes_trigger", {
    when: "BEFORE",
    operation: ["UPDATE", "DELETE"],
    function: "raise_exception",
    level: "ROW",
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
    updated_user_id: { type: "integer", notNull: true },
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
    updated_user_id: { type: "integer", notNull: true },
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
  // Drop trigger
  pgm.dropTrigger("areas", "prevent_updates_deletes_trigger", {
    ifExists: true,
  });

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
  pgm.dropFunction("raise_exception", [], { ifExists: true });
};
