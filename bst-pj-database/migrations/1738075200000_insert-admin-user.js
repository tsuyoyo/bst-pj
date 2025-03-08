/* eslint-disable camelcase */
const crypto = require("crypto");

exports.shorthands = undefined;

exports.up = async (pgm) => {
  // Execute only in development environment
  if (process.env.NODE_ENV === "development") {
    // Create a simple hash for the password (for development only)
    const password = "admin123";
    const hashedPassword = crypto
      .createHash("sha256")
      .update(password)
      .digest("hex");

    // Insert admin user
    pgm.sql(`
      INSERT INTO users (name, email, password, created_at, updated_at)
      VALUES ('MR Admin user', 'admin@example.com', '${hashedPassword}', NOW(), NOW())
      ON CONFLICT (email) DO NOTHING
    `);

    // Get the inserted user ID and create profile
    pgm.sql(`
      INSERT INTO user_profiles (user_id, created_at, updated_at)
      SELECT id, NOW(), NOW() FROM users WHERE email = 'admin@example.com'
      ON CONFLICT (user_id) DO NOTHING
    `);

    console.log("Admin user registered for development environment");
  } else {
    console.log(
      "Skipping automatic admin user registration in production environment"
    );
  }
};

exports.down = (pgm) => {
  // Execute only in development environment
  if (process.env.NODE_ENV === "development") {
    pgm.sql(`
      DELETE FROM users WHERE email = 'admin@example.com'
    `);

    console.log("Development admin user removed");
  }
};
