/*
  Warnings:

  - The primary key for the `Business` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `business_id` on the `Business` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `Business` table. All the data in the column will be lost.
  - You are about to drop the column `owner_id` on the `Business` table. All the data in the column will be lost.
  - The primary key for the `Comment` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `business_id` on the `Comment` table. All the data in the column will be lost.
  - You are about to drop the column `comment_id` on the `Comment` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `Comment` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `Comment` table. All the data in the column will be lost.
  - The primary key for the `Investment` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `investment_date` on the `Investment` table. All the data in the column will be lost.
  - You are about to drop the column `investment_id` on the `Investment` table. All the data in the column will be lost.
  - You are about to drop the column `opportunity_id` on the `Investment` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `Investment` table. All the data in the column will be lost.
  - The primary key for the `InvestmentOpportunity` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `amount_raised` on the `InvestmentOpportunity` table. All the data in the column will be lost.
  - You are about to drop the column `business_id` on the `InvestmentOpportunity` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `InvestmentOpportunity` table. All the data in the column will be lost.
  - You are about to drop the column `end_date` on the `InvestmentOpportunity` table. All the data in the column will be lost.
  - You are about to drop the column `opportunity_id` on the `InvestmentOpportunity` table. All the data in the column will be lost.
  - You are about to drop the column `start_date` on the `InvestmentOpportunity` table. All the data in the column will be lost.
  - You are about to drop the column `target_amount` on the `InvestmentOpportunity` table. All the data in the column will be lost.
  - The primary key for the `Notification` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `created_at` on the `Notification` table. All the data in the column will be lost.
  - You are about to drop the column `is_read` on the `Notification` table. All the data in the column will be lost.
  - You are about to drop the column `notification_id` on the `Notification` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `Notification` table. All the data in the column will be lost.
  - The primary key for the `Role` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `role_id` on the `Role` table. All the data in the column will be lost.
  - You are about to drop the column `role_name` on the `Role` table. All the data in the column will be lost.
  - The primary key for the `Session` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `created_at` on the `Session` table. All the data in the column will be lost.
  - You are about to drop the column `expires_at` on the `Session` table. All the data in the column will be lost.
  - You are about to drop the column `session_id` on the `Session` table. All the data in the column will be lost.
  - You are about to drop the column `session_token` on the `Session` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `Session` table. All the data in the column will be lost.
  - The primary key for the `Transaction` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `investment_id` on the `Transaction` table. All the data in the column will be lost.
  - You are about to drop the column `payment_method` on the `Transaction` table. All the data in the column will be lost.
  - You are about to drop the column `transaction_date` on the `Transaction` table. All the data in the column will be lost.
  - You are about to drop the column `transaction_id` on the `Transaction` table. All the data in the column will be lost.
  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `created_at` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `date_of_birth` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `full_name` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `password_hash` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `phone_number` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `User` table. All the data in the column will be lost.
  - The primary key for the `UserRole` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `role_id` on the `UserRole` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `UserRole` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[roleName]` on the table `Role` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[sessionToken]` on the table `Session` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `ownerId` to the `Business` table without a default value. This is not possible if the table is not empty.
  - Added the required column `businessId` to the `Comment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Comment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `opportunityId` to the `Investment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Investment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `businessId` to the `InvestmentOpportunity` table without a default value. This is not possible if the table is not empty.
  - Added the required column `endDate` to the `InvestmentOpportunity` table without a default value. This is not possible if the table is not empty.
  - Added the required column `startDate` to the `InvestmentOpportunity` table without a default value. This is not possible if the table is not empty.
  - Added the required column `targetAmount` to the `InvestmentOpportunity` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Notification` table without a default value. This is not possible if the table is not empty.
  - Added the required column `roleName` to the `Role` table without a default value. This is not possible if the table is not empty.
  - Added the required column `expiresAt` to the `Session` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sessionToken` to the `Session` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Session` table without a default value. This is not possible if the table is not empty.
  - Added the required column `investmentId` to the `Transaction` table without a default value. This is not possible if the table is not empty.
  - Added the required column `passwordHash` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `roleId` to the `UserRole` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `UserRole` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Business" DROP CONSTRAINT "Business_owner_id_fkey";

-- DropForeignKey
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_business_id_fkey";

-- DropForeignKey
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_user_id_fkey";

-- DropForeignKey
ALTER TABLE "Investment" DROP CONSTRAINT "Investment_opportunity_id_fkey";

-- DropForeignKey
ALTER TABLE "Investment" DROP CONSTRAINT "Investment_user_id_fkey";

-- DropForeignKey
ALTER TABLE "InvestmentOpportunity" DROP CONSTRAINT "InvestmentOpportunity_business_id_fkey";

-- DropForeignKey
ALTER TABLE "Notification" DROP CONSTRAINT "Notification_user_id_fkey";

-- DropForeignKey
ALTER TABLE "Session" DROP CONSTRAINT "Session_user_id_fkey";

-- DropForeignKey
ALTER TABLE "Transaction" DROP CONSTRAINT "Transaction_investment_id_fkey";

-- DropForeignKey
ALTER TABLE "UserRole" DROP CONSTRAINT "UserRole_role_id_fkey";

-- DropForeignKey
ALTER TABLE "UserRole" DROP CONSTRAINT "UserRole_user_id_fkey";

-- DropIndex
DROP INDEX "Role_role_name_key";

-- DropIndex
DROP INDEX "Session_session_token_key";

-- AlterTable
ALTER TABLE "Business" DROP CONSTRAINT "Business_pkey",
DROP COLUMN "business_id",
DROP COLUMN "created_at",
DROP COLUMN "owner_id",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "ownerId" INTEGER NOT NULL,
ADD CONSTRAINT "Business_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_pkey",
DROP COLUMN "business_id",
DROP COLUMN "comment_id",
DROP COLUMN "created_at",
DROP COLUMN "user_id",
ADD COLUMN     "businessId" INTEGER NOT NULL,
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "Comment_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Investment" DROP CONSTRAINT "Investment_pkey",
DROP COLUMN "investment_date",
DROP COLUMN "investment_id",
DROP COLUMN "opportunity_id",
DROP COLUMN "user_id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "investmentDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "opportunityId" INTEGER NOT NULL,
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "Investment_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "InvestmentOpportunity" DROP CONSTRAINT "InvestmentOpportunity_pkey",
DROP COLUMN "amount_raised",
DROP COLUMN "business_id",
DROP COLUMN "created_at",
DROP COLUMN "end_date",
DROP COLUMN "opportunity_id",
DROP COLUMN "start_date",
DROP COLUMN "target_amount",
ADD COLUMN     "amountRaised" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "businessId" INTEGER NOT NULL,
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "endDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "startDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "targetAmount" DOUBLE PRECISION NOT NULL,
ADD CONSTRAINT "InvestmentOpportunity_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Notification" DROP CONSTRAINT "Notification_pkey",
DROP COLUMN "created_at",
DROP COLUMN "is_read",
DROP COLUMN "notification_id",
DROP COLUMN "user_id",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "isRead" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "Notification_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Role" DROP CONSTRAINT "Role_pkey",
DROP COLUMN "role_id",
DROP COLUMN "role_name",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "roleName" TEXT NOT NULL,
ADD CONSTRAINT "Role_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Session" DROP CONSTRAINT "Session_pkey",
DROP COLUMN "created_at",
DROP COLUMN "expires_at",
DROP COLUMN "session_id",
DROP COLUMN "session_token",
DROP COLUMN "user_id",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "expiresAt" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "sessionToken" TEXT NOT NULL,
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "Session_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Transaction" DROP CONSTRAINT "Transaction_pkey",
DROP COLUMN "investment_id",
DROP COLUMN "payment_method",
DROP COLUMN "transaction_date",
DROP COLUMN "transaction_id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "investmentId" INTEGER NOT NULL,
ADD COLUMN     "paymentMethod" TEXT,
ADD COLUMN     "transactionDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD CONSTRAINT "Transaction_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "User" DROP CONSTRAINT "User_pkey",
DROP COLUMN "created_at",
DROP COLUMN "date_of_birth",
DROP COLUMN "full_name",
DROP COLUMN "password_hash",
DROP COLUMN "phone_number",
DROP COLUMN "user_id",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "dateOfBirth" TIMESTAMP(3),
ADD COLUMN     "fullName" TEXT,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "passwordHash" TEXT NOT NULL,
ADD COLUMN     "phoneNumber" TEXT,
ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "UserRole" DROP CONSTRAINT "UserRole_pkey",
DROP COLUMN "role_id",
DROP COLUMN "user_id",
ADD COLUMN     "roleId" INTEGER NOT NULL,
ADD COLUMN     "userId" INTEGER NOT NULL,
ADD CONSTRAINT "UserRole_pkey" PRIMARY KEY ("userId", "roleId");

-- CreateIndex
CREATE UNIQUE INDEX "Role_roleName_key" ON "Role"("roleName");

-- CreateIndex
CREATE UNIQUE INDEX "Session_sessionToken_key" ON "Session"("sessionToken");

-- AddForeignKey
ALTER TABLE "Business" ADD CONSTRAINT "Business_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "InvestmentOpportunity" ADD CONSTRAINT "InvestmentOpportunity_businessId_fkey" FOREIGN KEY ("businessId") REFERENCES "Business"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Investment" ADD CONSTRAINT "Investment_opportunityId_fkey" FOREIGN KEY ("opportunityId") REFERENCES "InvestmentOpportunity"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Investment" ADD CONSTRAINT "Investment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Transaction" ADD CONSTRAINT "Transaction_investmentId_fkey" FOREIGN KEY ("investmentId") REFERENCES "Investment"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Comment" ADD CONSTRAINT "Comment_businessId_fkey" FOREIGN KEY ("businessId") REFERENCES "Business"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Comment" ADD CONSTRAINT "Comment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Notification" ADD CONSTRAINT "Notification_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserRole" ADD CONSTRAINT "UserRole_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserRole" ADD CONSTRAINT "UserRole_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES "Role"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Session" ADD CONSTRAINT "Session_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
