use dqlabmartbasic;
use tugas2;

desc ms_pelanggan_dqlab;
desc ms_produk_dqlab;
desc tr_penjualan_dqlab;

-- soal no 1
select kode_pelanggan, nama_produk, qty, harga
from tr_penjualan_dqlab
where harga >= 200000 order by harga desc;

-- soal no 2
select tp.kode_transaksi, tp.kode_pelanggan, mp.nama_pelanggan, tp.kode_produk, tp.nama_produk, tp.harga, tp.qty
from tr_penjualan_dqlab as tp
join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan
having sum(qty) > 3;

-- soal no 3


