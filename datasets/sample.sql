BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(2,'Dunes market','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2024-08-06','Non-refrigerated','Rice and beans','1');
INSERT INTO "Delivery_Item__c" VALUES(2,'2022-12-10','Frozen','Meat','2');
INSERT INTO "Delivery_Item__c" VALUES(3,'2022-10-14','Non-refrigerated','Fruits','2');
INSERT INTO "Delivery_Item__c" VALUES(4,'2022-09-30','Refrigerated','Milk','3');
INSERT INTO "Delivery_Item__c" VALUES(5,'2024-08-01','Non-refrigerated','Rice and Beans','2');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'Creche Food','2022-08-27T11:00:00.000+0000','Requested','2');
INSERT INTO "Delivery__c" VALUES(2,'Groceries','2022-08-11T11:00:00.000+0000','Scheduled','2');
INSERT INTO "Delivery__c" VALUES(3,'Infant milk','2022-08-05T11:00:00.000+0000','Completed','2');
COMMIT;
