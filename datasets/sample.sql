BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Cuenta de ejemplo para asignaciones','');
INSERT INTO "Account" VALUES(2,'Fresh Groceries Market','');
INSERT INTO "Account" VALUES(3,'Cuenta de ejemplo para asignaciones','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery_Notes__c" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2021-06-30','Non-refrigerated','Carrots','Wash very well','1');
INSERT INTO "Delivery_Item__c" VALUES(2,'2021-07-08','Refrigerated','Tomatoes','','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Schedule_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2021-06-25T17:00:00.000+0000','Scheduled','2');
INSERT INTO "Delivery__c" VALUES(2,'2021-07-01T17:00:00.000+0000','Scheduled','2');
COMMIT;
