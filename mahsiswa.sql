CREATE DATABASE fakultas;

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT, 
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum ('laki-laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

-- insert jurusan 
insert into jurusan (kode, nama) values ("APBL", "Teknik Informatika");
insert into jurusan (kode, nama) values ("PTIF", "Teknik Industri");

-- insert mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (1,'72190029', 'Fadhlan', 'laki-laki', 'Jakarta', '2001-08-17', 'Jl. Purwa 2 Blok P No.17');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (1,'72190014', 'Mohamad', 'laki-laki', 'Citayam', '2001-02-16', 'Jl. Narada Blok C10 No.16');

-- update data mahasiswa
update mahasiswa set alamat = "JL. Tamansari 6 No 14" where id = 2;

-- delete data mahasiswa 
delete from mahasiswa where id = 2;
