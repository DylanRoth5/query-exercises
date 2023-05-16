use businessDB;

create table VENDOR(
    V_CODE INT PRIMARY KEY,
    V_NAME CHAR(35) NOT NULL,
    V_CONTACT CHAR(25) NOT NULL,
    V_AREACODE CHAR(3) NOT NULL,
    V_PHONE CHAR(8) NOT NULL,
    V_STATE CHAR(2) NOT NULL,
    V_ORDER CHAR(1) NOT NULL
);

-- Tabla de CUSTOMER
CREATE TABLE CUSTOMER (
  CUS_CODE INT PRIMARY KEY,
  CUS_LNAME VARCHAR(50) NOT NULL,
  CUS_FNAME VARCHAR(50) NOT NULL,
  CUS_INITIAL VARCHAR(4) NULL,
  CUS_AREACODE CHAR(4) NOT NULL,
  CUS_PHONE CHAR(13) NULL,
  CUS_BALANCE DECIMAL(8,2),
);

-- Tabla de INVOICE
CREATE TABLE INVOICE (
  INV_NUMBER INT PRIMARY KEY,
  CUS_CODE INT,
  INV_DATE DATETIME NOT NULL,
  CONSTRAINT FK_INVOICE_CUSTOMER
		FOREIGN KEY (CUS_CODE)
		REFERENCES CUSTOMER(CUS_CODE)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

-- Tabla Producto
CREATE TABLE PRODUCT (
	P_CODE INT PRIMARY KEY,
	P_DESCRIPT VARCHAR(500) NULL,
	P_INDATE DATETIME NOT NULL,
	P_QOH INT NULL,
	P_MIN INT NULL,
	P_PRICE INT NOT NULL,
	P_DISCOUNT INT NULL,
	V_CODE INT FOREIGN KEY REFERENCES VENDOR(V_CODE)
);

-- Tabla de LINE
CREATE TABLE LINE (
  INV_NUMBER INT FOREIGN KEY REFERENCES INVOICE(INV_NUMBER),
  LINE_NUMBER INT,
  PRIMARY KEY (INV_NUMBER,LINE_NUMBER),
  P_CODE INT FOREIGN KEY REFERENCES PRODUCT(P_CODE),
  LINE_UNITS INT NOT NULL,
  LINE_PRICE DECIMAL(10,2) NOT NULL,
);