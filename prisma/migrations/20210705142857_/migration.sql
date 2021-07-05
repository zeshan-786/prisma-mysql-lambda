/*
  Warnings:

  - You are about to alter the column `email` on the `WaitList` table. The data in that column could be lost. The data in that column will be cast from `VarChar(512)` to `VarChar(191)`.
  - You are about to alter the column `name` on the `WaitList` table. The data in that column could be lost. The data in that column will be cast from `VarChar(255)` to `VarChar(191)`.
  - You are about to alter the column `website` on the `WaitList` table. The data in that column could be lost. The data in that column will be cast from `VarChar(512)` to `VarChar(191)`.

*/
-- AlterTable
ALTER TABLE `WaitList` MODIFY `email` VARCHAR(191) NOT NULL,
    MODIFY `name` VARCHAR(191) NOT NULL,
    MODIFY `website` VARCHAR(191) NOT NULL,
    MODIFY `phone` VARCHAR(191) NOT NULL;
