# Tugas Aplikasi Form Pendaftaran Event
# Nama: Jabbar Hafizh Abdillah
# NIM: 2409116116

### Project ini merupakan tugas mata kuliah Pemrograman Aplikasi Bergerak (PAB) yang dibuat menggunakan Flutter.
Aplikasi ini digunakan untuk melakukan pendaftaran peserta event dengan fitur:

- Form pendaftaran event

- Multi-step form menggunakan Stepper

- Validasi input secara real-time

- Manajemen data pendaftar menggunakan Provider

- Menampilkan daftar pendaftar

- Edit data pendaftar

- Hapus data pendaftar

- Pencarian (Search) pendaftar

- Halaman detail pendaftar

## Struktur Folder

```
lib
│
├── providers
│   └── registration_provider.dart
│
├── models
│   └── registrant_model.dart
│
├── pages
│   ├── registration_page.dart
│   ├── registrant_list_page.dart
│   ├── registrant_detail_page.dart
│   └── edit_registrant_page.dart
│
└── main.dart
```

---

## Fitur Aplikasi

### 1. Form Registrasi Event

Menggunakan Multi-Step Form (Stepper)

Form dibagi menjadi **3 tahap**:

#### Step 1 - Data Akun

User mengisi:

- Nama lengkap
- Email
- Password

Fitur:

- Validasi form
- Validasi format email
- Validasi panjang password


#### Step 2 - Data Diri

User mengisi:

- Gender (Radio Button)
- Program Studi (Dropdown)
- Tanggal Lahir (Date Picker)

Fitur:

- Input interaktif
- Validasi input
- Format tanggal otomatis


#### Step 3 - Konfirmasi

User harus:

- Menyetujui syarat dan ketentuan menggunakan Checkbox

Setelah menekan **Continue**, maka:

- Data pendaftar disimpan
- Akan muncul dialog konfirmasi berhasil


### 2. Manajemen Data Pendaftar

Data pendaftar dikelola menggunakan **Provider**.

Fitur:

- Menambahkan data pendaftar
- Mengupdate data pendaftar
- Menghapus data pendaftar
- Mengambil data berdasarkan ID


### 3. Daftar Pendaftar (List Page)

Halaman ini menampilkan seluruh pendaftar event.

Menampilkan:

- Nama pendaftar
- Email
- Program studi
- Gender

Fitur:

- Tombol **Edit**
- Tombol **Delete**
- Navigasi ke halaman detail


### 4. Fitur Search Pendaftar

User dapat mencari pendaftar berdasarkan:

- Nama
- Email

Fitur:

- Search dilakukan secara **real-time**
- Hasil langsung berubah saat user mengetik
- Tidak perlu tombol search


### 5. Edit Data Pendaftar

User dapat mengubah data pendaftar yang sudah ada.

Data yang dapat diubah:

- Nama
- Email
- Program studi

Setelah menekan **Simpan Perubahan**, data akan langsung diperbarui.


### 6. Detail Pendaftar

Halaman ini menampilkan informasi lengkap pendaftar.

Menampilkan:

- Nama
- Email
- Gender
- Program Studi
- Tanggal Lahir
- Umur
- Waktu registrasi

Data ditampilkan dalam bentuk **card informasi**.



### 7. Navigasi Halaman

Aplikasi memiliki beberapa halaman utama:

- Registration Page (Form Pendaftaran)
- Registrant List Page (Daftar Pendaftar)
- Registrant Detail Page (Detail Pendaftar)
- Edit Registrant Page (Edit Data)

## Dokumentasi

### Form Kosong

<img width="1919" height="1018" alt="image" src="https://github.com/user-attachments/assets/2f3f1c32-a0f8-45d3-a548-729182d43584" />

<img width="1919" height="1019" alt="image" src="https://github.com/user-attachments/assets/c6dc6ffc-dff4-4bc5-acd7-f218cab00798" />

<img width="1919" height="1014" alt="image" src="https://github.com/user-attachments/assets/d907b2cd-618b-4906-81f8-1ba3fb9c33de" />


### Form Terisi

<img width="1919" height="1015" alt="image" src="https://github.com/user-attachments/assets/0fde2440-9577-43c5-b50c-324142dc81f7" />

<img width="1919" height="1015" alt="image" src="https://github.com/user-attachments/assets/83a36691-2181-48b0-9ed5-54795de8ebd4" />

<img width="1919" height="1010" alt="image" src="https://github.com/user-attachments/assets/aaf9ac65-ba70-483f-818a-4c0bfb374852" />

<img width="1919" height="1016" alt="image" src="https://github.com/user-attachments/assets/9ff324d0-182d-4f56-ae7e-562bd4b7432b" />




### Validation Error

<img width="1919" height="1017" alt="image" src="https://github.com/user-attachments/assets/9082e6bc-be00-4be5-8c21-6c071bc4e235" />

<img width="1919" height="1017" alt="image" src="https://github.com/user-attachments/assets/bd8c45b4-a22c-4ba1-bca5-b1f247b9025f" />


<img width="1919" height="1019" alt="image" src="https://github.com/user-attachments/assets/7e665f50-79ca-4f84-b589-2de320c7a00b" />


### List Pendaftar

<img width="1919" height="1019" alt="image" src="https://github.com/user-attachments/assets/85b2d963-95c2-473c-8dd8-3c3004209861" />

### Edit Pendaftar

<img width="1919" height="1012" alt="image" src="https://github.com/user-attachments/assets/d01effa1-1ab9-43d2-a52e-ad636fd2483b" />





