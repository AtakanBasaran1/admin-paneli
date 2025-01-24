-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "ad" TEXT NOT NULL,
    "soyad" TEXT NOT NULL,
    "telefon" TEXT NOT NULL,
    "kupeNo" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "KucukBasPerakende" (
    "id" SERIAL NOT NULL,
    "ad" TEXT NOT NULL,
    "soyad" TEXT NOT NULL,
    "telefon" TEXT NOT NULL,
    "kupeNo" TEXT NOT NULL,
    "kesimSiraNo" INTEGER NOT NULL,
    "kesimSaati" INTEGER NOT NULL,
    "kilo" DOUBLE PRECISION NOT NULL,
    "fiyat" DOUBLE PRECISION NOT NULL,
    "tutar" DOUBLE PRECISION NOT NULL,
    "kapora" DOUBLE PRECISION NOT NULL,
    "kalan" DOUBLE PRECISION NOT NULL,
    "siparisNotu" TEXT NOT NULL DEFAULT 'Sipariş notu bulunmamakta..',
    "hazirlanmaDurumu" TEXT NOT NULL DEFAULT 'Hazırlanıyor..',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "KucukBasPerakende_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_kupeNo_key" ON "User"("kupeNo");

-- CreateIndex
CREATE UNIQUE INDEX "KucukBasPerakende_kupeNo_key" ON "KucukBasPerakende"("kupeNo");
