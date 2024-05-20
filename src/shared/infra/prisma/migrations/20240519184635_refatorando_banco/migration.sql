/*
  Warnings:

  - You are about to drop the `HorarioEntrada` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `HorarioSaida` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "HorarioEntrada" DROP CONSTRAINT "HorarioEntrada_codigoUsuario_fkey";

-- DropForeignKey
ALTER TABLE "HorarioSaida" DROP CONSTRAINT "HorarioSaida_codigoUsuario_fkey";

-- DropTable
DROP TABLE "HorarioEntrada";

-- DropTable
DROP TABLE "HorarioSaida";

-- CreateTable
CREATE TABLE "Horarios" (
    "id" TEXT NOT NULL,
    "codigoUsuario" TEXT NOT NULL,
    "horarioEntrada" TIMESTAMP(3) NOT NULL,
    "horarioSaida" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Horarios_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Horarios" ADD CONSTRAINT "Horarios_codigoUsuario_fkey" FOREIGN KEY ("codigoUsuario") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
