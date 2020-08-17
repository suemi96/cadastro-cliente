CREATE TABLE "users" (
  "id" BIGSERIAL PRIMARY KEY,
  "name" varchar(20),
  "surname" varchar(50),
  "creation_date" timestamp
);

CREATE TABLE "address" (
  "id" BIGSERIAL PRIMARY KEY,
  "address_line" varchar(100),
  "postal_code" varchar(15),
  "city" varchar(50),
  "state" varchar(50),
  "user_id" bigint
);

ALTER TABLE "address" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
