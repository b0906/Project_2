-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/DGDG5j
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "shoe_data_table" (
    "id" varchar(255)   NOT NULL,
    "brand_id" int   NOT NULL,
    "category" varchar(255)   NOT NULL,
    "prices_min" float   NOT NULL,
    "prices_max" float   NOT NULL,
    CONSTRAINT "pk_shoe_data_table" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "brand" (
    "id" int   NOT NULL,
    "brand_name" varchar(255)   NOT NULL,
    CONSTRAINT "pk_brand" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "shoe_data_table" ADD CONSTRAINT "fk_shoe_data_table_brand_id" FOREIGN KEY("brand_id")
REFERENCES "brand" ("id");

SELECT * FROM shoe_data_table;
SELECT * FROM brand;

DROP TABLE shoe_data_table;
DROP TABLE brand;