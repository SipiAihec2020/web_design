-- The following statement sets the collation of the database to UTF8.
ALTER DATABASE xxxxx CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- Drop statements
DROP TABLE IF EXISTS admin;

-- Creates the admin entity
CREATE TABLE admin (
	adminId BINARY(16) NOT NULL,
	adminEmail VARCHAR(128) NOT NULL,
	adminHash CHAR(97) NOT NULL,
	adminUsername VARCHAR(32) NOT NULL,
	-- Creates a unique index to prevent duplicated data
	UNIQUE(adminEmail),
	UNIQUE(adminUsername),
	-- Sets the primary key
	PRIMARY KEY(adminId)
);
