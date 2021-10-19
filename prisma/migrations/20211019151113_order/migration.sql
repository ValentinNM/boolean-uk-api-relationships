-- CreateTable
CREATE TABLE "Order" (
    "id" SERIAL NOT NULL,
    "product" VARCHAR(225) NOT NULL,
    "description" VARCHAR(225) NOT NULL,
    "quantity" INTEGER NOT NULL,
    "inStock" INTEGER NOT NULL,
    "estimateDelivery" TIMESTAMP(3) NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Order_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Order_userId_key" ON "Order"("userId");

-- AddForeignKey
ALTER TABLE "Order" ADD CONSTRAINT "Order_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
