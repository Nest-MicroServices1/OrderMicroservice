/*
  Warnings:

  - You are about to drop the `orderReceip` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "orderReceip" DROP CONSTRAINT "orderReceip_orderId_fkey";

-- DropTable
DROP TABLE "orderReceip";
