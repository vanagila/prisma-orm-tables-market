-- CreateTable
CREATE TABLE "user" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "age" INTEGER NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "password" VARCHAR(10) NOT NULL,
    "github_link" VARCHAR(255),

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product" (
    "id" UUID NOT NULL,
    "description" VARCHAR(255) NOT NULL,
    "value" INTEGER NOT NULL,
    "qty_in_storage" INTEGER NOT NULL,
    "type" TEXT NOT NULL,
    "created_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "available" INTEGER,

    CONSTRAINT "product_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "store" (
    "cnpj" VARCHAR(15) NOT NULL DEFAULT 'Alimentação',
    "name" VARCHAR(255) NOT NULL,
    "segment" VARCHAR(100),
    "address" VARCHAR(255) NOT NULL,
    "phone_number" VARCHAR(12),
    "branches_qty" INTEGER NOT NULL,
    "open_date_hour" DATE NOT NULL,

    CONSTRAINT "store_pkey" PRIMARY KEY ("cnpj")
);

-- CreateTable
CREATE TABLE "supplier" (
    "id" UUID NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "rating" INTEGER NOT NULL,
    "segment" VARCHAR(100),
    "address" VARCHAR(255) NOT NULL,
    "phone_number" VARCHAR(12),
    "branches_qty" INTEGER NOT NULL,
    "open_date_hour" DATE NOT NULL,
    "created_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "supplier_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "user_email_key" ON "user"("email");

-- CreateIndex
CREATE UNIQUE INDEX "supplier_email_key" ON "supplier"("email");
