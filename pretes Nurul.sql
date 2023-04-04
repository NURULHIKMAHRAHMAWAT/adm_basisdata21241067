CREATE TABLE "EMPLOYEES" (
  "employeeNumber" int PRIMARY KEY,
  "lastName" varchar,
  "extantion" varchar,
  "email" varchar,
  "officeCode" int,
  "reportTo" varchar,
  "jobTime" varchar
);

CREATE TABLE "OFFICES" (
  "officeCode" int PRIMARY KEY,
  "city" varchar,
  "phone" int,
  "addressLine1" varchar,
  "addressLine2" varchar,
  "state" varchar,
  "country" varchar,
  "postalCode" varchar,
  "temitory" varchar
);

CREATE TABLE "CUSTOMERS" (
  "customerNumber" int PRIMARY KEY,
  "customerName" varchar,
  "contactLastName" varchar,
  "contactFirtsName" varchar,
  "phone" int,
  "addressLine1" varchar,
  "addressLine2" varchar,
  "city" varchar,
  "state" varchar,
  "postalCode" int,
  "country" varchar,
  "salesRepEmployeeNumber" int,
  "creditLimit" int
);

CREATE TABLE "PAYMENTS" (
  "customerNumber" int PRIMARY KEY,
  "checkNumber" int,
  "paymentDate" int,
  "amount" int
);

CREATE TABLE "ORDERS" (
  "orderNumber" int PRIMARY KEY,
  "orderDate" int,
  "requiredDate" int,
  "shippedDate" int,
  "status" varchar,
  "comments" varchar,
  "customerNumber" int
);

CREATE TABLE "ORDERDETAILS" (
  "orderNumber" int PRIMARY KEY,
  "productCode" varchar,
  "quantytyOrdered" int,
  "priceEarch" int,
  "orderLineNumber" int
);

CREATE TABLE "PRODUCTS" (
  "productCode" int PRIMARY KEY,
  "productName" varchar,
  "productLine" varchar,
  "productScale" varchar,
  "productVendor" int,
  "productDescription" varchar,
  "quantytyInStock" int,
  "buyPrice" int,
  "MRSP" int
);

CREATE TABLE "PRODUCTLINES" (
  "productLine" int PRIMARY KEY,
  "textDescription" varchar,
  "htmlDescription" varcahr,
  "image" varchar
);

ALTER TABLE "PRODUCTS" ADD FOREIGN KEY ("productLine") REFERENCES "PRODUCTLINES" ("productLine");

ALTER TABLE "OFFICES" ADD FOREIGN KEY ("officeCode") REFERENCES "EMPLOYEES" ("officeCode");

ALTER TABLE "ORDERDETAILS" ADD FOREIGN KEY ("productCode") REFERENCES "PRODUCTS" ("productCode");

ALTER TABLE "PAYMENTS" ADD FOREIGN KEY ("customerNumber") REFERENCES "CUSTOMERS" ("customerNumber");

ALTER TABLE "ORDERS" ADD FOREIGN KEY ("orderNumber") REFERENCES "ORDERDETAILS" ("orderNumber");

ALTER TABLE "ORDERS" ADD FOREIGN KEY ("customerNumber") REFERENCES "CUSTOMERS" ("customerNumber");
