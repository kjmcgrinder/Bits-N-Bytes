﻿CREATE TABLE repair_progress
(
	ID INT IDENTITY,
	employeeID INT NOT NULL,
	repairID INT NOT NULL,
	startDate DATETIME NOT NULL,
	finishDate DATETIME,

	CONSTRAINT repairProgress_primaryKey PRIMARY KEY (ID),
	CONSTRAINT repairProgress_employeeKey FOREIGN KEY (employeeID) REFERENCES EMPLOYEE,
	CONSTRAINT repairProgress_repairKey FOREIGN KEY (repairID) REFERENCES SERVICE_ORDER
);