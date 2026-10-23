-- 1. Cantumkan seluruh komoditas unik yang ditambang oleh perusahaan pada Tabel 1.
SELECT DISTINCT
    Commodity
FROM
    `world-mining-commodities.commodities.table_1`;

-- 2. Ambil nama dan situs web semua perusahaan yang beroperasi di Kanada.
SELECT 
    Name, Website
FROM
    `world-mining-commodities.commodities.table_1`
WHERE
    Location LIKE '%Canada%';

-- 3. refleksi negara-negara dari Tabel 2 tempat 'Emas' yang ditambang pada tahun 2022.
SELECT 
    country
FROM
    `world-mining-commodities.commodities.table_2`
WHERE
    mined_raw_mat LIKE '%Gold%'
        AND 2022 > 0;

-- 4. Temukan total produksi 'Tembaga' untuk tahun 2020 di semua negara
SELECT 
    SUM(2020) AS total_Copper_Production
FROM
    `world-mining-commodities.commodities.table_2`
WHERE
    mined_raw_mat = 'Copper';

-- 5. Menampilkan nama dan tahapan proyek perusahaan yang terlibat dalam penambangan Intan.
SELECT 
    name, `Project Stage`
FROM
    `world-mining-commodities.commodities.table_1`
WHERE
    Commodity LIKE '%Diamond%';

-- 6. mengidentifikasi satuan ukuran yang digunakan untuk 'Nikel' pada Tabel 2.
SELECT DISTINCT
    unit
FROM
    `world-mining-commodities.commodities.table_2`
WHERE
    mined_raw_mat = 'Nickel';

-- 7. Cantumkan seluruh perusahaan pada Tabel 1 yang berada pada tahap 'Produksi'.
SELECT 
    *
FROM
    `world-mining-commodities.commodities.table_1`
WHERE
    `Project Stage` LIKE '%Production%';

-- 8. Temukan 3 komoditas teratas yang ditambang di Zimbabwe berdasarkan total produksi pada tahun 2021.
SELECT 
    mined_raw_mat, SUM(2021) AS total_production
FROM
    `world-mining-commodities.commodities.table_2`
WHERE
    country = 'Zimbabwe'
GROUP BY mined_raw_mat
ORDER BY total_production DESC
LIMIT 3;

-- 9. Mencatat dimana produksi suatu komoditas melebihi 1 juta ton pada tahun 2022.
SELECT 
    mined_raw_mat, 2020
FROM
    `world-mining-commodities.commodities.table_2`
WHERE
    2020 > 1000000;

-- 10. refleksi negara-negara yang mengalami penurunan produksi 'Talk' antara tahun 2018 dan 2022.
SELECT 
    country
FROM
    `world-mining-commodities.commodities.table_2`
WHERE
    mined_raw_mat = 'Talc'
        AND 2018 > 2022;

-- 11. refleksi negara-negara yang secara konsisten menambang 'Platinum' setiap tahunnya dari tahun 2018 hingga 2022.
SELECT  country
FROM `world-mining-commodities.commodities.table_2`
WHERE  mined_raw_mat = 'Platinum'
        AND 2018 > 0
        AND 2019 > 0
        AND 2020 > 0
        AND 2021 > 0
        AND 2022 > 0