-- CreateTable
CREATE TABLE "MasteringRequest" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "originalTrackUrl" TEXT NOT NULL,
    "masteredTrackUrl" TEXT,
    "status" TEXT NOT NULL DEFAULT 'pending',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "MasteringRequest_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "MasteringRequest" ADD CONSTRAINT "MasteringRequest_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
