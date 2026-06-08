-- =====================================================
-- Vendor Data Cleansing Query
-- =====================================================
-- Purpose:
-- Standardise vendor master data fields to support
-- profiling, duplicate detection and migration readiness.
--
-- This query cleans:
-- - Vendor names
-- - ABNs
-- - Phone numbers
-- - Addresses
--
-- Current Status:
-- Work in progress. This version focuses on field-level cleansing and standardisation. Row counts, duplicate
-- detection, match confidence scoring and merge logic will be added in later scripts.

-- =====================================================

WITH cleaned AS (
    SELECT
        vendor_id,
        vendor_name,
        address,

        TRIM(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            ' ' || UPPER(REPLACE(TRIM(address), ',', '')) || ' ',
                            ' ST ',
                            ' STREET '
                        ),
                        ' RD ',
                        ' ROAD '
                    ),
                    ' PDE ',
                    ' PARADE '
                ),
                ' WERRIBEE 3030',
                ' WERRIBEE VIC 3030'
            )
        ) AS cleaned_address,

        abn,
        REPLACE(TRIM(abn), ' ', '') AS cleaned_abn,

        phone,
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(TRIM(phone), ' ', ''),
                    '(',
                    ''
                ),
                ')',
                ''
            ),
            '-',
            ''
        ) AS cleaned_phone,

        TRIM(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    ' ' || UPPER(REPLACE(vendor_name, '.', '')) || ' ',
                                    '''',
                                    ''
                                ),
                                ' PTY LTD ',
                                ' '
                            ),
                            ' LTD ',
                            ' '
                        ),
                        ' AUST ',
                        ' AUSTRALIA '
                    ),
                    ' NZ ',
                    ' NEW ZEALAND '
                ),
                ' MELB ',
                ' MELBOURNE '
            )
        ) AS cleaned_vendor_name

    FROM legacy_vendors
)

SELECT
    vendor_id,
    cleaned_vendor_name,
    cleaned_abn,
    cleaned_phone,
    cleaned_address
FROM cleaned;
