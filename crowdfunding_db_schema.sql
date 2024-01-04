CREATE TABLE "Campaign" (
    "Cf_id" Int   NOT NULL,
    "Contact_id" int   NOT NULL,
    "Company_name" varchar   NOT NULL,
    "Description" varchar   NOT NULL,
    "Goal" decimal(10,2)   NOT NULL,
    "Pledged" decimal(10,2)   NOT NULL,
    "Outcome" varchar   NOT NULL,
    "Backers_Count" int NOT NULL,
    "Country" varchar NOT NULL,
    "Currency" varchar NOT NULL,
    "Launched_date" date NOT NULL,
    "End_date" date NOT NULL,
    "Category_id" varchar   NOT NULL,
    "Subcategory_id" varchar   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "Cf_id"
     )
);

CREATE TABLE "Contact" (
    "Contact_id" int   NOT NULL,
    "First_name" varchar   NOT NULL,
    "Last_name" varchar   NOT NULL,
    "Email" varchar   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "Contact_id"
     )
);

CREATE TABLE "Category" (
    "Category_id" varchar   NOT NULL,
    "Category" varchar   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "Category_id"
     )
);

CREATE TABLE "Subcategory" (
    "Subcategory_id" varchar   NOT NULL,
    "Subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "Subcategory_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Category_ID" FOREIGN KEY("Category_id")
REFERENCES "Category" ("Category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Subcategory_ID" FOREIGN KEY("Subcategory_id")
REFERENCES "Subcategory" ("Subcategory_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Contact_ID" FOREIGN KEY("Contact_id")
REFERENCES "Contact" ("Contact_id");
