DROP TABLE tab_order;
DROP TABLE tab_order_requirement;
DROP TABLE tab_vehicle;
DROP TABLE tab_vehicle_capability;
DROP TABLE tab_subtype;

CREATE TABLE tab_order (
  id NUMBER NOT NULL
, CONSTRAINT order_pk PRIMARY KEY (id)
);

CREATE TABLE tab_order_requirement (
  order_id NUMBER NOT NULL
, subtype NUMBER NOT NULL
, must NUMBER(1,0) NOT NULL
, importance NUMBER NOT NULL
, CONSTRAINT order_requirement_pk PRIMARY KEY (order_id, subtype)
);

CREATE TABLE tab_vehicle (
  id NUMBER NOT NULL
, CONSTRAINT vehicle_pk PRIMARY KEY (id)
);

CREATE TABLE tab_vehicle_capability (
  vehicle_id NUMBER NOT NULL
, subtype NUMBER NOT NULL
, degree NUMBER NOT NULL
, CONSTRAINT vehicle_capability_pk PRIMARY KEY (vehicle_id, subtype)
);

CREATE TABLE tab_subtype (
  id NUMBER NOT NULL
, description VARCHAR2(255)
, CONSTRAINT subtype_pk PRIMARY KEY (id)
);
