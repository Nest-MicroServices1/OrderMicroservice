-- AlterTable
ALTER TABLE "Order" ADD COLUMN     "stripeChargeId" TEXT;

-- CreateTable
CREATE TABLE "orderReceip" (
    "id" TEXT NOT NULL,
    "orderId" TEXT NOT NULL,
    "receipUrl" TEXT NOT NULL,
    "cretedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "orderReceip_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "orderReceip_orderId_key" ON "orderReceip"("orderId");

-- AddForeignKey
ALTER TABLE "orderReceip" ADD CONSTRAINT "orderReceip_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "Order"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
