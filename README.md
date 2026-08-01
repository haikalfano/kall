# Kriya Nusantara PKWU — Showcase & Katalog Produk

Website showcase/portofolio produk kelompok PKWU (Prakarya dan Kewirausahaan) berbasis React + Tailwind CSS, dengan panel admin terintegrasi Supabase untuk mengelola data produk.

## Struktur Proyek

```
kriya-nusantara-pkwu/
├── index.html              # Entry HTML (memuat font Google: Fraunces & Inter)
├── package.json
├── vite.config.js
├── tailwind.config.js
├── postcss.config.js
├── .env.example             # Contoh konfigurasi Supabase
├── .gitignore
└── src/
    ├── main.jsx              # Entry point React
    ├── App.jsx                # Seluruh komponen aplikasi (single-file)
    └── index.css              # Tailwind directives + style tambahan
```

## Cara Menjalankan

1. Ekstrak file zip, lalu masuk ke folder project:
   ```bash
   cd kriya-nusantara-pkwu
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. (Opsional) Aktifkan Supabase — salin `.env.example` menjadi `.env` lalu isi:
   ```
   VITE_SUPABASE_URL=https://xxxxxxxxxxxx.supabase.co
   VITE_SUPABASE_ANON_KEY=your-anon-public-key
   ```
   Tanpa langkah ini, aplikasi tetap berjalan normal menggunakan data lokal (mock data) — cocok untuk demo cepat.

4. Jalankan mode pengembangan:
   ```bash
   npm run dev
   ```
   Buka `http://localhost:5173` di browser.

5. Build untuk produksi:
   ```bash
   npm run build
   npm run preview
   ```

## Struktur Tabel Supabase (jika ingin mengaktifkan CRUD penuh)

Buat tabel bernama `showcase_products` dengan kolom berikut:

| Kolom             | Tipe        |
|-------------------|-------------|
| id                | text (PK)   |
| name              | text        |
| creator           | text        |
| category          | text        |
| image             | text        |
| personalWebsite   | text        |
| description       | text        |
| specs             | text        |
| process           | text        |
| created_at        | timestamptz (default now()) |

## Login Admin

- Klik tombol **Admin** di navigasi.
- Kata sandi default: `pkwu2026` (ubah di `src/App.jsx`, konstanta `ADMIN_PASSWORD`).

## Kontak WhatsApp

Nomor WhatsApp perwakilan kelompok dapat diubah pada konstanta `GROUP_PROFILE.waNumber` di `src/App.jsx`.
