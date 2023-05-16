-- menggunakan database dqlabmartbasic
use dqlabmartbasic;

-- cek table yang tersedia 
show tables;

-- cek deskripsi tiap table 
desc ms_pelanggan_dqlab;
desc ms_produk_dqlab;
desc tr_penjualan_dqlab;

-- select 1 kolom dari table ms_produk_dqlab
select nama_produk from ms_produk_dqlab;

-- select 1 table dari ms_pelanggan dan tr_penjualan
select nama_pelanggan from ms_pelanggan_dqlab; -- mangambil kolom nama_pelanggan
select tgl_transaksi from tr_penjualan_dqlab; -- mengambil kolom tanggal transaksi

-- select 2 atau lebih kolom tabel ms_produk_dqlab
select nama_produk, harga from tr_penjualan_dqlab;
-- mengambil kolom kode pelanggan, tanggal transaksi dan total harga dari table tr_penjualan_dqlab
select kode_pelanggan, tgl_transaksi, harga from tr_penjualan_dqlab;

-- mengambil seluruh kolom dari table 
-- ambil seluruh kolom dari table ms_pelanggan_dqlab
select * from ms_pelanggan_dqlab;

-- prefix dan Alias
-- prifix nama table 
select ms_produk_dqlab.nama_produk, ms_produk_dqlab.harga
from ms_produk_dqlab;
-- prefix dari nama database dan table 
select dqlabmartbasic.ms_produk_dqlab.nama_produk
from ms_produk_dqlab;
-- Alias dari nama kolom
select nama_produk as np, harga price from ms_produk_dqlab;
-- Alias dari nama table 
select nama_produk from ms_produk_dqlab as msp;
-- Alias bertemu dengan prefix
select msp.nama_produk from ms_produk_dqlab as msp