
CREATE TABLE "circuits" (
  "circuitId" int(11) NOT NULL AUTO_INCREMENT,
  "circuitRef" varchar(255) NOT NULL DEFAULT '',
  "name" varchar(255) NOT NULL DEFAULT '',
  "location" varchar(255) DEFAULT NULL,
  "country" varchar(255) DEFAULT NULL,
  "lat" float DEFAULT NULL,
  "lng" float DEFAULT NULL,
  "alt" int(11) DEFAULT NULL,
  "url" varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY ("circuitId"),
  UNIQUE KEY "url" ("url")
);

CREATE TABLE "constructors" (
  "constructorId" int(11) NOT NULL AUTO_INCREMENT,
  "constructorRef" varchar(255) NOT NULL DEFAULT '',
  "name" varchar(255) NOT NULL DEFAULT '',
  "nationality" varchar(255) DEFAULT NULL,
  "url" varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY ("constructorId"),
  UNIQUE KEY "name" ("name")
);

CREATE TABLE "drivers" (
  "driverId" int(11) NOT NULL AUTO_INCREMENT,
  "driverRef" varchar(255) NOT NULL DEFAULT '',
  "number" int(11) DEFAULT NULL,
  "code" varchar(3) DEFAULT NULL,
  "forename" varchar(255) NOT NULL DEFAULT '',
  "surname" varchar(255) NOT NULL DEFAULT '',
  "dob" date DEFAULT NULL,
  "nationality" varchar(255) DEFAULT NULL,
  "url" varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY ("driverId"),
  UNIQUE KEY "url" ("url")
);

CREATE TABLE "races" (
  "raceId" int(11) NOT NULL AUTO_INCREMENT,
  "year" int(11) NOT NULL DEFAULT '0',
  "round" int(11) NOT NULL DEFAULT '0',
  "circuitId" int(11) NOT NULL DEFAULT '0',
  "name" varchar(255) NOT NULL DEFAULT '',
  "date" date NOT NULL DEFAULT '0000-00-00',
  "time" time DEFAULT NULL,
  "url" varchar(255) DEFAULT NULL,
  "fp1_date" date DEFAULT NULL,
  "fp1_time" time DEFAULT NULL,
  "fp2_date" date DEFAULT NULL,
  "fp2_time" time DEFAULT NULL,
  "fp3_date" date DEFAULT NULL,
  "fp3_time" time DEFAULT NULL,
  "quali_date" date DEFAULT NULL,
  "quali_time" time DEFAULT NULL,
  "sprint_date" date DEFAULT NULL,
  "sprint_time" time DEFAULT NULL,
  PRIMARY KEY ("raceId"),
  UNIQUE KEY "url" ("url")
);

CREATE TABLE "results" (
  "resultId" int(11) NOT NULL AUTO_INCREMENT,
  "raceId" int(11) NOT NULL DEFAULT '0',
  "driverId" int(11) NOT NULL DEFAULT '0',
  "constructorId" int(11) NOT NULL DEFAULT '0',
  "number" int(11) DEFAULT NULL,
  "grid" int(11) NOT NULL DEFAULT '0',
  "position" int(11) DEFAULT NULL,
  "positionText" varchar(255) NOT NULL DEFAULT '',
  "positionOrder" int(11) NOT NULL DEFAULT '0',
  "points" float NOT NULL DEFAULT '0',
  "laps" int(11) NOT NULL DEFAULT '0',
  "time" varchar(255) DEFAULT NULL,
  "milliseconds" int(11) DEFAULT NULL,
  "fastestLap" int(11) DEFAULT NULL,
  "rank" int(11) DEFAULT '0',
  "fastestLapTime" varchar(255) DEFAULT NULL,
  "fastestLapSpeed" varchar(255) DEFAULT NULL,
  "statusId" int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY ("resultId")
);
