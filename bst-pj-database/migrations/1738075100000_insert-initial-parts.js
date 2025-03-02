/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = (pgm) => {
  // 初期パートデータの挿入
  pgm.sql(`
    INSERT INTO parts (name, description, updated_user_id) VALUES
    ('ボーカル', 'Vocals', 1),
    ('ギター', 'Guitar', 1),
    ('ベース', 'Bass', 1),
    ('ドラム', 'Drums', 1),
    ('キーボード', 'Keyboard', 1),
    ('ピアノ', 'Piano', 1),
    ('パーカッション', 'Percussion', 1)
  `);
};

exports.down = (pgm) => {
  // 挿入したデータの削除
  pgm.sql(`
    DELETE FROM parts 
    WHERE name IN ('ボーカル', 'ギター', 'ベース', 'ドラム', 'キーボード', 'ピアノ', 'パーカッション')
  `);
};
