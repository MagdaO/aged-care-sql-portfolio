DROP TABLE IF EXISTS legacy_vendors;

CREATE TABLE legacy_vendors AS
SELECT * FROM (
    VALUES
    (1, 'ABC Cleaning Pty Ltd', '11111111111', '03 9123 4567', '10 Main Street, Werribee VIC 3030'),
    (2, 'A.B.C. Cleaning PTY LTD', '11 111 111 111', '(03) 9123-4567', '10 Main St, Werribee VIC 3030'),
    (3, 'ABC Cleaners', NULL, '0391234567', '10 Main Street Werribee 3030'),

    (4, 'St Vincent''s Health Australia Ltd', '22222222222', '02 8888 1111', '41 Victoria Parade, Fitzroy VIC 3065'),
    (5, 'St Vincents Health Aust', '22222222222', '(02) 8888 1111', '41 Victoria Pde, Fitzroy VIC 3065'),

    (6, 'Green Family Trust', NULL, '03 7000 1234', '25 River Road, Footscray VIC 3011'),
    (7, 'The Trustee for Green Family Trust', NULL, '0370001234', '25 River Rd, Footscray VIC 3011'),

    (8, 'Melbourne Office Supplies Pty. Ltd.', '44444444444', '03 9555 2222', '88 Collins Street, Melbourne VIC 3000'),
    (9, 'Melb Office Supplies', '44444444444', '0395552222', '88 Collins St, Melbourne VIC 3000'),

    (10, 'Good Shepherd Australia New Zealand', NULL, '03 8412 8700', '1 Church Street, Abbotsford VIC 3067'),
    (11, 'Good Shepard Aust NZ', NULL, '0384128700', '1 Church St, Abbotsford VIC 3067'),

    (12, 'ABC Cleaning Pty Ltd', '99999999999', '03 9000 1111', '10 Main Street, Werribee VIC 3030')
) AS t (
    vendor_id,
    vendor_name,
    abn,
    phone,
    address
);
