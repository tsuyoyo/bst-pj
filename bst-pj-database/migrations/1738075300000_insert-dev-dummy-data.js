/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = async (pgm) => {
  // Execute only in development environment
  if (process.env.NODE_ENV === "development") {
    // Get admin user ID
    const adminUserResult = await pgm.db.query(
      "SELECT id FROM users WHERE email = 'admin@example.com'"
    );

    // If admin user exists, use their ID, otherwise use 1 as fallback
    const adminUserId =
      adminUserResult.rows.length > 0 ? adminUserResult.rows[0].id : 1;

    // Check if artists already exist
    const existingArtists = await pgm.db.query(
      "SELECT name FROM artists WHERE name IN ('Queen', 'The Beatles', 'Led Zeppelin', 'Pink Floyd', 'Radiohead')"
    );

    const existingNames = existingArtists.rows.map((row) => row.name);

    // Insert only artists that don't exist yet
    const artistsToInsert = [
      ["Queen", "https://www.queenonline.com"],
      ["The Beatles", "https://www.thebeatles.com"],
      ["Led Zeppelin", "https://www.ledzeppelin.com"],
      ["Pink Floyd", "https://www.pinkfloyd.com"],
      ["Radiohead", "https://www.radiohead.com"],
    ].filter((artist) => !existingNames.includes(artist[0]));

    if (artistsToInsert.length > 0) {
      const insertValues = artistsToInsert
        .map(
          (artist) =>
            `('${artist[0]}', '${artist[1]}', ${adminUserId}, NOW(), NOW())`
        )
        .join(",\n        ");

      pgm.sql(`
        INSERT INTO artists (name, website, updated_user_id, created_at, updated_at)
        VALUES ${insertValues}
      `);
    }

    // Insert dummy songs (only for artists that exist)
    const songInserts = [
      ["Queen", "Bohemian Rhapsody"],
      ["Queen", "We Will Rock You"],
      ["The Beatles", "Hey Jude"],
      ["The Beatles", "Let It Be"],
      ["Led Zeppelin", "Stairway to Heaven"],
      ["Led Zeppelin", "Kashmir"],
      ["Pink Floyd", "Comfortably Numb"],
      ["Pink Floyd", "Wish You Were Here"],
      ["Radiohead", "Creep"],
      ["Radiohead", "Karma Police"],
    ];

    // Check existing songs to avoid duplicates
    const existingSongs = await pgm.db.query(`
      SELECT a.name as artist_name, s.title 
      FROM songs s
      JOIN artists a ON s.artist_id = a.id
      WHERE (a.name, s.title) IN (
        ('Queen', 'Bohemian Rhapsody'),
        ('Queen', 'We Will Rock You'),
        ('The Beatles', 'Hey Jude'),
        ('The Beatles', 'Let It Be'),
        ('Led Zeppelin', 'Stairway to Heaven'),
        ('Led Zeppelin', 'Kashmir'),
        ('Pink Floyd', 'Comfortably Numb'),
        ('Pink Floyd', 'Wish You Were Here'),
        ('Radiohead', 'Creep'),
        ('Radiohead', 'Karma Police')
      )
    `);

    const existingSongKeys = existingSongs.rows.map(
      (row) => `${row.artist_name}:${row.title}`
    );

    for (const [artistName, songTitle] of songInserts) {
      if (!existingSongKeys.includes(`${artistName}:${songTitle}`)) {
        pgm.sql(`
          INSERT INTO songs (title, artist_id, updated_user_id, created_at, updated_at)
          SELECT '${songTitle}', id, ${adminUserId}, NOW(), NOW() 
          FROM artists 
          WHERE name = '${artistName}'
        `);
      }
    }

    console.log(
      "Dummy artists and songs data inserted for development environment"
    );
  } else {
    console.log("Skipping dummy data insertion in production environment");
  }
};

exports.down = (pgm) => {
  // Execute only in development environment
  if (process.env.NODE_ENV === "development") {
    // Delete dummy songs first (due to foreign key constraints)
    pgm.sql(`
      DELETE FROM songs 
      WHERE title IN (
        'Bohemian Rhapsody', 'Hey Jude', 'Stairway to Heaven', 
        'Comfortably Numb', 'Creep', 'We Will Rock You', 
        'Let It Be', 'Kashmir', 'Wish You Were Here', 'Karma Police'
      )
    `);

    // Delete dummy artists
    pgm.sql(`
      DELETE FROM artists 
      WHERE name IN ('Queen', 'The Beatles', 'Led Zeppelin', 'Pink Floyd', 'Radiohead')
    `);

    console.log("Dummy artists and songs data removed");
  }
};
