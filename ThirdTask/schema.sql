CREATE table LOG1 (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id TEXT,
    user_time TEXT,
    bet INTEGER,
    win INTEGER
);

CREATE TABLE USERS (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id TEXT,
    email TEXT,
    geo TEXT
);
