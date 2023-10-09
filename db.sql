-- IMAGE BLOB STORING COLUMN DATA -- 
ALTER TABLE
    `settings` CHANGE `logo` `logo` longblob NULL
AFTER
    `updated_at`,
    CHANGE `favicon` `favicon` longblob NULL
AFTER
    `logo`;

-- SESSION COLUMN CHANGED
ALTER TABLE
    `sessions` CHANGE `payload` `payload` longtext COLLATE 'utf8mb4_unicode_ci' NOT NULL
AFTER
    `user_agent`;

-- SIDE BAR ICON
ALTER TABLE
    `settings` CHANGE `side_icon` `side_icon` longblob NULL
AFTER
    `favicon`;