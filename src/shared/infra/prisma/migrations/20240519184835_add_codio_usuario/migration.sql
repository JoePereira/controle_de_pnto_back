/*
  Warnings:

  - Added the required column `usuarioId` to the `Horarios` table without a default value. This is not possible if the table is not empty.
  - Added the required column `codigoUsuario` to the `Usuario` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Horarios" DROP CONSTRAINT "Horarios_codigoUsuario_fkey";

-- AlterTable
ALTER TABLE "Horarios" ADD COLUMN     "usuarioId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Usuario" ADD COLUMN     "codigoUsuario" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Horarios" ADD CONSTRAINT "Horarios_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
