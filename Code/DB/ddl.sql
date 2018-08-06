--Table: product1.NB_USERS

--DROP TABLE "product1"."NB_USERS";

CREATE TABLE "product1"."NB_USERS" (
  "ID"        INT8 NOT NULL PRIMARY KEY,
  "EMAIL"     WCHAR NOT NULL,
  "FNAME"     WCHAR NOT NULL,
  "MNAME"     WCHAR DEFAULT NULL,
  "LNAME"     WCHAR DEFAULT NULL,
  "PASSWORD"  WCHAR NOT NULL,
  "COUNTRY"   WCHAR,
  "STATE"     WCHAR,
  "CITY"      WCHAR,
  "MOBLENO"   WCHAR,
  "STATUS"    WCHAR DEFAULT A
);

CREATE UNIQUE INDEX "NB_USERS_Index01"
  ON "product1"."NB_USERS"
  ("EMAIL");

--Table: product1.NB_USERS_HISTORY

--DROP TABLE "product1"."NB_USERS_HISTORY";

CREATE TABLE "product1"."NB_USERS_HISTORY" (
  "ID"             INT8 NOT NULL PRIMARY KEY,
  "USERID"         INT8 NOT NULL,
  "BROWSER_AGENT"  WCHAR,
  "IPADDRESS"      WCHAR,
  "LOGIN_TIME"     DATE,
  /* Foreign keys */
  CONSTRAINT "USERID_HIST_FK"
    FOREIGN KEY ("USERID")
    REFERENCES "product1"."NB_USERS"("ID")
);

CREATE INDEX "NB_USERS_HISTORY_Index01"
  ON "product1"."NB_USERS_HISTORY"
  ("USERID");