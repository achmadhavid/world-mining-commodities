# ⛏️ World Mining Commodities — SQL Analysis

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-336791?logo=postgresql&logoColor=white)
![Data](https://img.shields.io/badge/Data-CSV-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

Analisis data komoditas dan perusahaan pertambangan dunia menggunakan SQL untuk menjawab berbagai pertanyaan bisnis, mulai dari produksi per negara hingga tahapan proyek perusahaan.

## 📌 Ringkasan Proyek

Proyek ini menggunakan dua dataset bersih, yaitu data komoditas tambang dunia dan data 116 perusahaan pertambangan. Seluruh pertanyaan dijawab lewat query SQL, dan hasil tiap query disimpan sebagai file CSV terpisah agar mudah ditinjau.

## 🎯 Tujuan

- Mengidentifikasi komoditas unik yang ditambang di dunia.
- Mengetahui produksi komoditas tertentu (tembaga, emas) berdasarkan negara dan tahun.
- Memetakan perusahaan berdasarkan negara operasi dan tahap proyek.
- Melatih penulisan query SQL untuk filtering, agregasi, dan join antar tabel.

## 🛠️ Tools & Teknologi

- **SQL (PostgreSQL)** untuk query dan analisis data
- **CSV** sebagai sumber data dan output hasil query

## ❓ Pertanyaan Bisnis yang Dijawab

| No | Pertanyaan | File Hasil |
|----|-----------|------------|
| 1 | Apa saja komoditas unik yang ditambang? | [`komoditas unik.csv`](komoditas%20unik.csv) |
| 2 | Apa 3 komoditas teratas yang ditambang di Zimbabwe? | [`3 komoditas teratas yang ditambang di Zimbabwe.csv`](3%20komoditas%20teratas%20yang%20ditambang%20di%20Zimbabwe.csv) |
| 3 | Apa satuan ukuran yang digunakan untuk Nikel pada Tabel 2? | [`mengidentifikasi satuan ukuran yang digunakan untuk 'Nikel' pada Tabel 2..csv`](mengidentifikasi%20satuan%20ukuran%20yang%20digunakan%20untuk%20'Nikel'%20pada%20Tabel%202..csv) |
| 4 | Siapa saja perusahaan yang beroperasi di Kanada beserta situs webnya? | [`nama dan situs web semua perusahaan yang beroperasi di Kanada.csv`](nama%20dan%20situs%20web%20semua%20perusahaan%20yang%20beroperasi%20di%20Kanada.csv) |
| 5 | Perusahaan apa saja yang terlibat dalam penambangan Intan dan di tahap proyek apa? | [`nama dan tahapan proyek perusahaan yang terlibat dalam penambangan Intan..csv`](nama%20dan%20tahapan%20proyek%20perusahaan%20yang%20terlibat%20dalam%20penambangan%20Intan..csv) |
| 6 | Negara mana saja yang menambang Emas pada tahun 2022? | [`negara-negara dari Tabel 2 tempat 'Emas' yang ditambang pada tahun 2022.csv`](negara-negara%20dari%20Tabel%202%20tempat%20'Emas'%20yang%20ditambang%20pada%20tahun%202022.csv) |
| 7 | Perusahaan mana yang berada pada tahap Produksi? | [`seluruh perusahaan pada Tabel 1 yang berada pada tahap 'Produksi'.csv`](seluruh%20perusahaan%20pada%20Tabel%201%20yang%20berada%20pada%20tahap%20'Produksi'.csv) |
| 8 | Berapa total produksi Tembaga tahun 2020 di semua negara? | [`total produksi 'Tembaga' untuk tahun 2020 di semua negara.csv`](total%20produksi%20'Tembaga'%20untuk%20tahun%202020%20di%20semua%20negara.csv) |

## 📁 Struktur Repository

```
world-mining-commodities/
├── world_mining_commodities_clean.csv    # Dataset komoditas (Tabel 2)
├── 116_world_mining_companies_clean.csv  # Dataset perusahaan (Tabel 1)
├── query-world-mining-commodities.sql    # Seluruh query SQL
├── *.csv                                 # Hasil output tiap query
└── README.md
```

## 🚀 Cara Menjalankan

1. Clone repository ini:
   ```bash
   git clone https://github.com/achmadhavid/world-mining-commodities.git
   ```
2. Buat database baru, lalu import kedua file `*_clean.csv` sebagai tabel.
3. Jalankan `query-world-mining-commodities.sql`.
4. Bandingkan hasilnya dengan file CSV output di repository.

## 👤 Author

**Achmad Havid** · [GitHub](https://github.com/achmadhavid)

*Bagian dari portofolio SQL & Data Analytics saya.*
