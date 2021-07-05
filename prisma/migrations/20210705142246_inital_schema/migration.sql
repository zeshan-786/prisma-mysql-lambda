-- CreateTable
CREATE TABLE `WaitList` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(512) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `website` VARCHAR(512) NOT NULL,
    `phone` VARCHAR(64) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `WaitList.email_unique`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
