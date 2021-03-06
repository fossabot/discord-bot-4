CREATE TABLE IF NOT EXISTS `twitter_status` (`isOnline` TINYINT(1) PRIMARY KEY DEFAULT 0);
INSERT INTO `twitter_status` (`isOnline`) VALUES (0);

CREATE TABLE IF NOT EXISTS `events` (`id` INT NOT NULL AUTO_INCREMENT, `name` VARCHAR(64) NOT NULL, `date_start` DATE NOT NULL, `date_end` DATE NULL, `description` LONGTEXT NULL, PRIMARY KEY (`id`));

CREATE TABLE IF NOT EXISTS `mention_responses` (`id` BIGINT(255) NOT NULL AUTO_INCREMENT, `user` VARCHAR(64) NOT NULL, `message` VARCHAR(1000) NOT NULL, PRIMARY KEY (`id`));

CREATE TABLE IF NOT EXISTS `giveaways` (`id` INT(1) NOT NULL AUTO_INCREMENT, `message_id` VARCHAR(64) NOT NULL, `data` JSON NOT NULL, PRIMARY KEY (`id`));