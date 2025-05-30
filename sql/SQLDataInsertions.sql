USE NOSQL_PROJECT_OPTICAL;

ALTER TABLE client NOCHECK CONSTRAINT ALL;

INSERT INTO client
VALUES
    ('CL0001', 'Andrea', 'Swift', '1989-03-15', '071388612', 'Leshke-Tetovo-1036', 'SW0011'),
    ('CL0002', 'Reanna', 'Jenkin', '2001-11-22', '072345986', 'Arbana-Tirana-1024', 'SW0012'),
    ('CL0003', 'Phil', 'Foden', '1974-02-19', '075249800', 'Topoje-Lezhe-1052', 'SW0013'),
    ('CL0004', 'Dorea', 'Beckham', '2008-06-02', '078541993', 'Kukes-Tirane-1131', 'SW0014'),
    ('CL0005', 'Cole', 'Palmer', '1981-07-27', '072444366', 'Sarande-Vlore-2003', 'SW0015'),
    ('CL0006', 'Breanna', 'Mainor', '2009-12-31', '072712814', 'Lezhe-Tirane-2143', 'SW0012'),
    ('CL0007', 'Louisa', 'Legend', '1999-11-02', '071100736', 'Cair-Shkup-1225', 'SW0017'),
    ('CL0008', 'Harry', 'Kane', '1985-10-31', '075696996', 'Veleshte-Struge-6330', 'SW0018'),
    ('CL0009', 'Reagan', 'Clarkson', '1975-09-11', '078872321', 'Cegran-Gostivar-1230', 'SW0012'),
    ('CL0010', 'Ella', 'Elainor', '1987-04-01', '077388921', 'Berzaku-Kumanove-3215', 'SW0020'),
    ('CL0011', 'Liam', 'Anderson', '1992-05-14', '071223344', 'Tirane-1001', 'SW0011'),
    ('CL0012', 'Nora', 'Mitchell', '2000-01-08', '072334455', 'Bllace-Tetovo-1035', 'SW0014'),
    ('CL0013', 'Ethan', 'Bennett', '1983-03-22', '075667788', 'Korce-7001', 'SW0015'),
    ('CL0014', 'Sophia', 'Williams', '1996-08-10', '071998877', 'Ferizaj-Prishtine-3002', 'SW0016'),
    ('CL0015', 'Mila', 'Stone', '1989-12-02', '076112233', 'Elbasan-5004', 'SW0013'),
    ('CL0016', 'James', 'Morris', '1978-07-09', '071445566', 'Diber-Tirane-1205', 'SW0019'),
    ('CL0017', 'Ava', 'Nelson', '1995-10-25', '072998877', 'Tirane-1010', 'SW0020'),
    ('CL0018', 'Noah', 'Carter', '2003-02-16', '073223344', 'Bulqize-Diber-6300', 'SW0018'),
    ('CL0019', 'Emma', 'Morgan', '1991-06-04', '071334455', 'Gjirokaster-6002', 'SW0017'),
    ('CL0020', 'Lucas', 'Reed', '1984-09-30', '074556677', 'Laprake-Tirane-1100', 'SW0016');

ALTER TABLE client CHECK CONSTRAINT ALL;



ALTER TABLE employee NOCHECK CONSTRAINT ALL;

INSERT INTO employee
VALUES
    ('SW0011', 'Dorothea', 'Styles', '073455615'),
    ('SW0012', 'Joe', 'Alwyn', '078351414'),
    ('SW0013', 'Jane', 'Goddall', '072857396'),
    ('SW0014', 'Roy', 'Anderson', '070155915'),
    ('SW0015', 'Demi', 'Moore', '075219888'),
    ('SW0016', 'Dylan', 'James', '070212419'),
    ('SW0017', 'Maison', 'Jenner', '071147777'),
    ('SW0018', 'Troy', 'Meadow', '072707694'),
    ('SW0019', 'Liliane', 'Scott', '077628367'),
    ('SW0020', 'Elaine', 'Dune', '070222988'),
    ('MW0021', 'Dwayne', 'Taylor', '077717177'),
    ('MW0022', 'Shane', 'Joy', '075359741'),
    ('MW0023', 'Dove', 'Denton', '075862213'),
    ('MW0024', 'Vin', 'Thomas', '078808528'),
    ('MW0025', 'Lorraine', 'Gomez', '07152699'),
    ('MG0026', 'Ruelle', 'Johnson', '072524425'),
    ('MG0027', 'Max', 'Martin', '074229925'),
    ('MG0028', 'Claire', 'Perez', '070666222'),
    ('MG0029', 'Nathan', 'Rhodes', '076523341'),
    ('MG0030', 'Isla', 'Harper', '078998112');

ALTER TABLE employee CHECK CONSTRAINT ALL;


ALTER TABLE eye_examination NOCHECK CONSTRAINT ALL;

INSERT INTO eye_examination
VALUES
    ('EX0035', 1.25, 1.50,  '2023-05-01', '09:00:00', 'Routine Check-up','CL0001', 'MW0021'),
    ('EX0036', -0.75, -0.50, '2023-08-08', '10:30:15', 'Follow-up','CL0005', 'MW0022'),
    ('EX0037', 2.00, 1.75,  '2024-01-01', '11:15:40', 'Initial Consultation','CL0007', 'MW0023'),
    ('EX0038', 0.25, 0.50, '2024-02-17', '19:30:00', 'Routine Check-up','CL0003', 'MW0024'),
    ('EX0039', -1.25, -1.50, '2023-11-01', '20:00:00', 'Follow-up', 'CL0009', 'MW0025'),
    ('EX0040', 2.25, 2.50, '2023-05-09', '12:45:00', 'Initial Consultation', 'CL0002', 'MW0021'),
    ('EX0041', -3.50, -3.50,  '2023-05-01', '13:25:30', 'Routine Check-up','CL0010', 'MW0022'),
    ('EX0042', 2.25, 2.50,  '2023-05-19', '12:45:00', 'Follow-up','CL0008', 'MW0023'),
    ('EX0043', 2.25, 2.50, '2024-04-18', '14:20:00', 'Initial Consultation', 'CL0006', 'MW0024'),
    ('EX0044', -2.00, -2.50,  '2024-05-01', '17:10:10', 'Routine Check-up','CL0004', 'MW0025'),
    -- 10 Additional Entries
    ('EX0045', 0.00, 0.00, '2024-06-05', '08:00:00', 'Routine Check-up','CL0011', 'MG0026'),
    ('EX0046', -1.75, -1.25, '2024-07-10', '09:15:30', 'Follow-up','CL0012', 'MG0027'),
    ('EX0047', 1.75, 1.50, '2024-08-12', '10:30:00', 'Initial Consultation','CL0013', 'MG0028'),
    ('EX0048', -0.25, -0.25, '2024-09-01', '11:45:00', 'Routine Check-up','CL0014', 'MG0029'),
    ('EX0049', -2.25, -2.75, '2024-09-15', '13:00:00', 'Follow-up','CL0015', 'MG0030'),
    ('EX0050', 3.00, 2.75, '2024-10-01', '14:30:00', 'Initial Consultation','CL0016', 'MW0021'),
    ('EX0051', -0.50, 0.25, '2024-11-11', '15:45:00', 'Routine Check-up','CL0017', 'MW0022'),
    ('EX0052', 1.00, 1.25, '2024-11-25', '16:10:10', 'Follow-up','CL0018', 'MW0023'),
    ('EX0053', -1.00, -1.00, '2024-12-05', '17:20:00', 'Routine Check-up','CL0019', 'MW0024'),
    ('EX0054', 2.50, 2.00, '2025-01-01', '18:35:00', 'Initial Consultation','CL0020', 'MW0025');

ALTER TABLE eye_examination CHECK CONSTRAINT ALL;


ALTER TABLE invoice NOCHECK CONSTRAINT ALL;

INSERT INTO invoice
VALUES
    ('IN0045', '2023-10-29', 10, 200.00, 5.75, 'CL0002', 'SW0012'),
    ('IN0046', '2024-02-17', 5, 250.00, 12.30, 'CL0005', 'SW0015'),
    ('IN0047', '2023-11-01', 8, 350.00, 8.99, 'CL0009', 'SW0019'),
    ('IN0048', '2024-01-01', 2, 150.50, 15.50, 'CL0007', 'SW0017'),
    ('IN0049', '2024-02-17', 4, 300.00, 11.45, 'CL0003', 'SW0013'),
    ('IN0050', '2024-04-18', 9, 210.00, 9.99, 'CL0006', 'SW0016'),
    ('IN0051', '2024-03-10', 3, 180.00, 6.50, 'CL0001', 'SW0011'),
    ('IN0052', '2024-03-15', 7, 275.00, 7.25, 'CL0004', 'SW0014'),
    ('IN0053', '2024-03-20', 6, 230.00, 10.00, 'CL0008', 'SW0018'),
    ('IN0054', '2024-03-25', 1, 100.00, 4.50, 'CL0010', 'SW0020'),
    ('IN0055', '2024-03-30', 2, 120.00, 5.00, 'CL0011', 'SW0011'),
    ('IN0056', '2024-04-04', 5, 195.00, 6.95, 'CL0012', 'SW0012'),
    ('IN0057', '2024-04-08', 8, 260.00, 9.75, 'CL0013', 'SW0013'),
    ('IN0058', '2024-04-12', 4, 220.00, 7.80, 'CL0014', 'SW0014'),
    ('IN0059', '2024-04-16', 3, 205.00, 5.65, 'CL0015', 'SW0015'),
    ('IN0060', '2024-04-20', 9, 345.00, 8.10, 'CL0016', 'SW0016'),
    ('IN0061', '2024-04-24', 6, 298.00, 9.00, 'CL0017', 'SW0017'),
    ('IN0062', '2024-04-28', 5, 270.00, 7.40, 'CL0018', 'SW0018'),
    ('IN0063', '2024-05-02', 7, 315.00, 10.15, 'CL0019', 'SW0019'),
    ('IN0064', '2024-05-06', 4, 240.00, 6.25, 'CL0020', 'SW0020');

ALTER TABLE invoice CHECK CONSTRAINT ALL;

ALTER TABLE manager NOCHECK CONSTRAINT ALL;


INSERT INTO manager 
VALUES
    ('MG0026'),
    ('MG0027'),
    ('MG0028');


ALTER TABLE manager CHECK CONSTRAINT ALL;


ALTER TABLE medicalworker NOCHECK CONSTRAINT ALL;

INSERT INTO medicalworker VALUES
('MW0021', 'A101', 'Optometrist'),
('MW0022', 'A102', 'Optician'),
('MW0023', 'A103', 'Ophthalmologist'),
('MW0024', 'A104', 'Orthoptist'),
('MW0025', 'A105', 'Ocularist');

ALTER TABLE medicalworker CHECK CONSTRAINT ALL;

ALTER TABLE product NOCHECK CONSTRAINT ALL;

INSERT INTO product VALUES
    ('PR0051', 'Sunglasses', 125.00, 'Eyewear', 'Y'),
    ('PR0052', 'Polarized Sunglasses', 200.00, 'Eyewear', 'Y'),
    ('PR0053', 'Contact Lenses', 30.00, 'Eyewear', 'Y'),
    ('PR0054', 'Blue Light Glasses', 300.00, 'Eyewear', 'N'),
    ('PR0055', 'Photochromic Lenses', 50.00, 'Eyewear', 'Y'),
    ('PR0056', 'Sports Glasses', 130.00, 'Eyewear', 'N'),
    ('PR0057', 'Prescription Glasses', 200.00, 'Eyewear', 'Y'),
    ('PR0058', 'Frames', 90.00, 'Eyewear', 'N'),
    ('PR0059', 'Swim Goggles', 95.00, 'Eyewear', 'N'),
    ('PR0060', '3D Glasses', 350.00, 'Eyewear', 'N'),
    ('PR0061', 'Reading Glasses', 75.00, 'Eyewear', 'Y'),
    ('PR0062', 'Driving Glasses', 150.00, 'Eyewear', 'Y'),
    ('PR0063', 'Kids Glasses', 60.00, 'Eyewear', 'Y'),
    ('PR0064', 'Safety Glasses', 85.00, 'Eyewear', 'N'),
    ('PR0065', 'Anti-Glare Glasses', 120.00, 'Eyewear', 'Y'),
    ('PR0066', 'VR Headset Lenses', 250.00, 'Eyewear', 'N'),
    ('PR0067', 'Bifocal Lenses', 180.00, 'Eyewear', 'Y'),
    ('PR0068', 'Trifocal Lenses', 220.00, 'Eyewear', 'Y'),
    ('PR0069', 'Lens Cleaner Kit', 15.00, 'Accessory', 'Y'),
    ('PR0070', 'Eyewear Case', 20.00, 'Accessory', 'Y');

ALTER TABLE product CHECK CONSTRAINT ALL;


ALTER TABLE purchase NOCHECK CONSTRAINT ALL;

INSERT INTO purchase VALUES
    (100001, '2023-10-29', '14:00:00', 'IN0045', 'SW0015'),
    (100002, '2024-02-17', '20:00:00', 'IN0046', 'SW0019'),
    (100003, '2023-11-01', '20:30:00', 'IN0047', 'SW0017'),
    (100004, '2024-01-01', '11:45:00', 'IN0048', 'SW0013'),
    (100005, '2024-02-17', '20:10:00', 'IN0049', 'SW0019'),
    (100006, '2024-04-18', '14:35:00', 'IN0050', 'SW0016'),
    (100007, '2023-09-01', '09:00:00', 'IN0045', 'SW0011'),
    (100008, '2023-12-12', '10:15:00', 'IN0046', 'SW0012'),
    (100009, '2024-01-15', '15:30:00', 'IN0047', 'SW0014'),
    (100010, '2024-03-10', '12:00:00', 'IN0048', 'SW0018'),
    (100011, '2023-07-20', '13:10:00', 'IN0049', 'SW0020'),
    (100012, '2023-11-25', '11:40:00', 'IN0050', 'SW0012'),
    (100013, '2024-05-01', '16:00:00', 'IN0045', 'SW0013'),
    (100014, '2024-05-02', '17:25:00', 'IN0046', 'SW0014'),
    (100015, '2023-06-14', '08:50:00', 'IN0047', 'SW0015'),
    (100016, '2023-08-08', '18:15:00', 'IN0048', 'SW0016'),
    (100017, '2023-10-05', '19:45:00', 'IN0049', 'SW0017'),
    (100018, '2024-04-28', '20:30:00', 'IN0050', 'SW0018'),
    (100019, '2024-03-22', '21:10:00', 'IN0045', 'SW0019'),
    (100020, '2024-02-12', '07:25:00', 'IN0046', 'SW0020');

ALTER TABLE purchase CHECK CONSTRAINT ALL;

ALTER TABLE supplier NOCHECK CONSTRAINT ALL;

INSERT INTO supplier
VALUES
('SL0011', 'Dorothea', '073455615', '2023-01-01', '2024-01-01', 'MG0026'),
('SL0012', 'Joe', '078351414', '2021-03-15', '2024-02-07', 'MG0027'),
('SL0013', 'Jane', '072857396', '2020-09-12', '2024-01-07', 'MG0028'),
('SL0014', 'Roy', '070155915', '2021-11-11', '2024-05-15', 'MG0026'),
('SL0015', 'Demi', '075219888', '2019-06-22', '2023-12-12', 'MG0028'),
('SL0016', 'Dylan', '070212419', '2020-10-15', '2021-10-27', 'MG0027');

ALTER TABLE supplier CHECK CONSTRAINT ALL;

ALTER TABLE salesworker NOCHECK CONSTRAINT ALL;

INSERT INTO salesworker
VALUES
('SW0011', 'Afternoon shift'),
('SW0012', 'Morning shift'),
('SW0013', 'Night shift'),
('SW0014', 'Graveyard shift'),
('SW0015', 'Morning shift'),
('SW0016', 'Night shift'),
('SW0017', 'Graveyard shift'),
('SW0018', 'Morning shift'),
('SW0019', 'Night shift'),
('SW0020', 'Graveyard shift');
 
ALTER TABLE salesworker CHECK CONSTRAINT ALL;   
ALTER TABLE makes NOCHECK CONSTRAINT ALL;

INSERT INTO makes
VALUES
('CL0002','IN0045', 100001),
('CL0005','IN0046', 100002),
( 'CL0009','IN0047', 100003),
( 'CL0007','IN0048', 100004),
( 'CL0003','IN0049', 100005),
( 'CL0006','IN0050', 100006);

ALTER TABLE makes CHECK CONSTRAINT ALL;
ALTER TABLE included_in NOCHECK CONSTRAINT ALL;

INSERT INTO included_in
VALUES
('PR0045','IN0039',  100001),
('PR0046','IN0040', 100002),
('PR0049','IN0041', 100003),
('PR0051','IN0042', 100004),
('PR0045', 'IN0043', 100005),
('PR0046','IN0044', 100006);

ALTER TABLE included_in CHECK CONSTRAINT ALL;


ALTER TABLE supplies NOCHECK CONSTRAINT ALL;

INSERT INTO supplies
VALUES
('SL0011', 'PR0051'),
('SL0012', 'PR0052'),
('SL0013', 'PR0053'),
('SL0014', 'PR0054'),
('SL0015', 'PR0051'),
('SL0016', 'PR0056'),
('SL0012', 'PR0057'),
('SL0015', 'PR0058'),
('SL0012', 'PR0059'),
('SL0013', 'PR0051');

ALTER TABLE supplies CHECK CONSTRAINT ALL;

