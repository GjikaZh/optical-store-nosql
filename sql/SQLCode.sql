USE master;
GO

DROP DATABASE IF EXISTS NOSQL_PROJECT_OPTICAL;
GO

CREATE DATABASE NOSQL_PROJECT_OPTICAL;
GO

USE NOSQL_PROJECT_OPTICAL;
GO

CREATE TABLE client (
    c_id        VARCHAR(6) NOT NULL,
    c_name      VARCHAR(15) NOT NULL,
    c_surname   VARCHAR(20) NOT NULL,
    c_birthday  DATE,
    c_phone     VARCHAR(15),
    c_address   VARCHAR(35),
    sw_id       VARCHAR(6) NOT NULL
);
GO
ALTER TABLE client ADD CONSTRAINT client_pk PRIMARY KEY (c_id);
GO

CREATE TABLE employee (
    e_id        VARCHAR(6) NOT NULL,
    e_name      VARCHAR(15) NOT NULL,
    e_surname   VARCHAR(15),
    e_contact   VARCHAR(15)
);
GO
ALTER TABLE employee ADD CONSTRAINT employee_pk PRIMARY KEY (e_id);
GO

CREATE TABLE eye_examination (
    ex_id           VARCHAR(6) NOT NULL,
    right_eye_pres  NUMERIC(5,2),
    left_eye_pres   NUMERIC(5,2),
    ex_date         DATE,
    ex_time         TIME,
    type_of_ex      VARCHAR(30),
    c_id            VARCHAR(6) NOT NULL,
    medw_id         VARCHAR(6) NOT NULL
);
GO
ALTER TABLE eye_examination ADD CONSTRAINT eye_examination_pk PRIMARY KEY (ex_id);
GO

CREATE TABLE included_in (
    pr_id   VARCHAR(6) NOT NULL,
    i_id    VARCHAR(6) NOT NULL,
    pu_num  NUMERIC(6) NOT NULL
);
GO
ALTER TABLE included_in ADD CONSTRAINT included_in_pk PRIMARY KEY (pr_id, i_id, pu_num);
GO

CREATE TABLE invoice (
    i_id        VARCHAR(6) NOT NULL,
    i_date      DATE,
    i_quantity  NUMERIC(10,2),
    i_total     NUMERIC(10,2),
    i_taxes     NUMERIC(10,2),
    c_id        VARCHAR(6) NOT NULL,
    sw_id       VARCHAR(6) NOT NULL
);
GO
ALTER TABLE invoice ADD CONSTRAINT invoice_pk PRIMARY KEY (i_id);
GO

CREATE TABLE makes (
    c_id    VARCHAR(6) NOT NULL,
    i_id    VARCHAR(6) NOT NULL,
    pu_num  NUMERIC(6) NOT NULL
);
GO
ALTER TABLE makes ADD CONSTRAINT makes_pk PRIMARY KEY (c_id, i_id, pu_num);
GO

CREATE TABLE manager (
    m_id    VARCHAR(6) NOT NULL
);
GO
ALTER TABLE manager ADD CONSTRAINT manager_pk PRIMARY KEY (m_id);
GO

CREATE TABLE medicalworker (
    medw_id         VARCHAR(6) NOT NULL,
    office          VARCHAR(7) NOT NULL,
    specialization  VARCHAR(20)
);
GO
ALTER TABLE medicalworker ADD CONSTRAINT medicalworker_pk PRIMARY KEY (medw_id);
GO

CREATE TABLE product (
    pr_id           VARCHAR(6) NOT NULL,
    pr_name         VARCHAR(20) NOT NULL,
    pr_price        NUMERIC(10,2) NOT NULL,
    pr_type         VARCHAR(20) NOT NULL,
    pr_availability CHAR(1) NOT NULL CHECK (pr_availability IN ('Y','N'))
);
GO
ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY (pr_id);
GO

CREATE TABLE purchase (
    pu_num      NUMERIC(6) NOT NULL,
    pu_date     DATE,
    pu_time     TIME,
    i_id        VARCHAR(6) NOT NULL,
    sw_id       VARCHAR(6) NOT NULL
);
GO
ALTER TABLE purchase ADD CONSTRAINT purchase_pk PRIMARY KEY (i_id, pu_num);
GO

CREATE TABLE salesworker (
    sw_id   VARCHAR(6) NOT NULL,
    s_shift VARCHAR(20)
);
GO
ALTER TABLE salesworker ADD CONSTRAINT salesworker_pk PRIMARY KEY (sw_id);
GO

CREATE TABLE supplier (
    s_id         VARCHAR(6) NOT NULL,
    s_name       VARCHAR(15) NOT NULL,
    s_phone      VARCHAR(15),
    date_from    DATE,
    date_until   DATE,
    m_id         VARCHAR(6) NOT NULL
);
GO
ALTER TABLE supplier ADD CONSTRAINT supplier_pk PRIMARY KEY (s_id);
GO

CREATE TABLE supplies (
    s_id   VARCHAR(6) NOT NULL,
    pr_id  VARCHAR(6) NOT NULL
);
GO
ALTER TABLE supplies ADD CONSTRAINT supplies_pk PRIMARY KEY (s_id, pr_id);
GO

-- Foreign Keys
ALTER TABLE client 
    ADD CONSTRAINT client_salesworker_fk FOREIGN KEY (sw_id)
    REFERENCES salesworker (sw_id) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE eye_examination 
    ADD CONSTRAINT eye_examination_client_fk FOREIGN KEY (c_id)
    REFERENCES client (c_id) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE eye_examination 
    ADD CONSTRAINT eye_exam_medicalworker_fk FOREIGN KEY (medw_id)
    REFERENCES medicalworker (medw_id) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE included_in 
    ADD CONSTRAINT included_in_product_fk FOREIGN KEY (pr_id)
    REFERENCES product (pr_id) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE included_in 
    ADD CONSTRAINT included_in_purchase_fk FOREIGN KEY (i_id, pu_num)
    REFERENCES purchase (i_id, pu_num) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE invoice 
    ADD CONSTRAINT invoice_client_fk FOREIGN KEY (c_id)
    REFERENCES client (c_id) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE invoice 
    ADD CONSTRAINT invoice_salesworker_fk FOREIGN KEY (sw_id)
    REFERENCES salesworker (sw_id) ON UPDATE NO ACTION ON DELETE NO ACTION;
GO

ALTER TABLE makes 
    ADD CONSTRAINT makes_client_fk FOREIGN KEY (c_id)
    REFERENCES client (c_id) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE makes 
    ADD CONSTRAINT makes_purchase_fk FOREIGN KEY (i_id, pu_num)
    REFERENCES purchase (i_id, pu_num) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE manager 
    ADD CONSTRAINT manager_employee_fk FOREIGN KEY (m_id)
    REFERENCES employee (e_id) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE medicalworker 
    ADD CONSTRAINT medicalworker_employee_fk FOREIGN KEY (medw_id)
    REFERENCES employee (e_id) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE purchase 
    ADD CONSTRAINT purchase_invoice_fk FOREIGN KEY (i_id)
    REFERENCES invoice (i_id) ON UPDATE NO ACTION ON DELETE NO ACTION;
GO

ALTER TABLE purchase 
    ADD CONSTRAINT purchase_salesworker_fk FOREIGN KEY (sw_id)
    REFERENCES salesworker (sw_id) ON UPDATE NO ACTION ON DELETE NO ACTION;
GO

ALTER TABLE salesworker 
    ADD CONSTRAINT salesworker_employee_fk FOREIGN KEY (sw_id)
    REFERENCES employee (e_id) ON UPDATE NO ACTION ON DELETE NO ACTION;
GO

ALTER TABLE supplier 
    ADD CONSTRAINT supplier_manager_fk FOREIGN KEY (m_id)
    REFERENCES manager (m_id) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE supplies 
    ADD CONSTRAINT supplies_product_fk FOREIGN KEY (pr_id)
    REFERENCES product (pr_id) ON UPDATE CASCADE ON DELETE CASCADE;
GO

ALTER TABLE supplies 
    ADD CONSTRAINT supplies_supplier_fk FOREIGN KEY (s_id)
    REFERENCES supplier (s_id) ON UPDATE CASCADE ON DELETE CASCADE;
GO
