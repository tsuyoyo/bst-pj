# Table List as of 2025-01-25

- Followings are defined in the database.
- Use the following commands to check the table structure.

```
\dt  -- List all tables
\d table_name  -- Table structure
```

## 1. Initial Setup (1737873472332_initial-setup.js)

- genres
- areas
- parts

## 2. User Tables (1737873646394_create-user-tables.js)

- users
- user_profiles
- user_parts
- user_genres
- follows

## 3. Content Tables (1737873750484_create-content-tables.js)

- artists
- artist_genres

## 4. Artist Tables (1737873823500_create-artist-tables.js)

- user_artists

## 5. Session Tables (1737873927332_create-session-tables.js)

- sessions
- session_parts
- session_songs
- session_participants
- session_song_entries
- session_resources
- session_feedbacks

## 6. Communication Tables (1737874013362_create-communication-tables.js)

- threads
- comments
- mentions
- reaction_types
- reactions
- notifications

## 7. Party Tables (1737874113595_create-party-tables.js)

- parties
- party_participants
- party_resources
- party_payments
