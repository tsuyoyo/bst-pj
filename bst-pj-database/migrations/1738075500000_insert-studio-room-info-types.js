/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // Insert initial studio_room_info_types
  pgm.sql(`
    INSERT INTO studio_room_info_types (name, created_at, updated_at)
    VALUES 
      ('楽器', NOW(), NOW()),
      ('録音機材', NOW(), NOW()),
      ('部屋の設備', NOW(), NOW()),
      ('その他', NOW(), NOW())
    ON CONFLICT (name) DO NOTHING
  `);

  console.log("Initial studio_room_info_types inserted");
};

exports.down = (pgm) => {
  // Remove the initial studio_room_info_types
  pgm.sql(`
    DELETE FROM studio_room_info_types 
    WHERE name IN ('楽器', '録音機材', '部屋の設備', 'その他')
  `);

  console.log("Initial studio_room_info_types removed");
};
