-- ORDER BY, GROUP BY, ASC DESC, HAVING
use tugas2;
-- menghitung database tugas2
use tugas2;

-- menggunakan ORDER BY unruk mengurut data
-- ambil nama kolom nama_produk, qty pada table penjualan, dan diurutkan berdasarkan kolom qty
select nama_produk, qty
from tr_penjualan_dqlab
order by qty;

-- ambil nama kolom nama_produk, qty pada table penjualan dan urutkan berdasarkan qty dan nama_produk
select nama_produk, qty
from tr_penjualan_dqlab
order by qty;

-- latihan1
-- ambil semua kolom dari table tr_penjualan_dqlab
select*from tr_penjualan_dqlab order by qty, tgl_transaksi;

-- ambil semua kolom dari semua kolom dari semua table ms_pelanggan_dqlab dengan mengurutkan berdasarkan alamat
select*from ms_pelanggan_dqlab order by alamat;  

-- ORDER BY dengfan ASC dan desc
select nama_produk, qty
from tr_penjualan_dqlab
order by qty desc, nama_produk ASC;

-- latihan2
-- ambil semua kolom tr_penjualan_dqlab dengan mengurutkan tgl_transaksi secara desc dan qty secara asc
select*from tr_penjualan_dqlab order by tgl_transaksi, qty asc;

-- tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan nama_pelanggan secara desc
select*from ms_pelanggan_dqlab order by nama_pelanggan desc;

-- tampilkan semua kolom dari table ms_pelanggan_dqlab dengan mengurutkan berdasarkan alamat secara desc 
select*from ms_pelanggan_dqlab order by alamat desc;

-- ORDER BY dari hasil perhitungan
-- ambil nama_produk, qty, harga, total, beli urutkan berdasarkan total beli
select nama_produk, qty, harga, qty*harga as total_beli
from tr_penjualan_dqlab
order by total_beli desc;

-- latihan3
-- urutkan dengan ekspresi total harga menggunakan jumlah diskon dikali harga dikurangi diskon
select 250000 - (250000*(10/100));

-- ORDER BY dengan WHERE
-- ambil nama_produk, qty dari table penjualan dengan nama_produk berawalan f, urutkan berdasarkan qty terbanyak
select nama_produk, qty
from tr_penjualan_dqlab
where nama_produk like 'F%'
order by qty desc;

-- latihan4
-- ambil semua kolom dari transaksi_penjualan yang memiliki diskon dan urutkan berdasarkan harga tertinggi
select*from tr_penjualan_dqlab order by harga desc, diskon_persen > 0;

-- tampilkan semua kolom, kualitas penjualan yang memiliki harga min Rp.100000 dan diurutkan berdasarkan harga tertinggi
select nama_produk, qty, harga from tr_penjualan_dqlab where harga >= 100000 order by harga desc;

-- tampilkan semua kolom nama_produk, qty pembelian dan harga darin transaksi penjualan yang memiliki harga min 100000 atau atau nama produk
select nama_produk, qty, harga from tr_penjualan_dqlab where harga >= 100000 or nama_produk like 'T%' order by harga desc;

-- FUNGSI AGREGASI
-- ambil semua nilai qty dari seluruh row pada table transaksi
select sum(qty) from tr_penjualan_dqlab;

-- menghitung jumlah seluruh row pada table transaksi
select count(*) from tr_penjualan_dqlab;
select count(*) from ms_pelanggan_dqlab;
select count(*) from ms_produk_dqlab;

-- menghitung penjumlahan qty dan menghitung seluruh row 
select sum(qty), count(*)
from tr_penjualan_dqlab;

-- menghitung rata-rata qty nilai tertinggi dari qty dan nilai terendah
select avg(qty), min(qty), max(qty)
from tr_penjualan_dqlab;

-- COUNT (DISTINCT)
-- menghitung nilai unik dari nama_produk di table tr_penjualan_dqlab
select count(distinct nama_produk), count(nama_produk)
from tr_penjualan_dqlab;

-- nama_produk dan fungsi AGREGASI untuk nilai qty pada table tr_penjualan_dqlab
select nama_produk, max(qty)
from tr_penjualan_dqlab;

-- GROUP BY
-- mengambil grouping nilai dari nama_produk
select nama_produk from tr_penjualan_dqlab
group by nama_produk;

-- ambil grouping nilai dari kolom nama_produk dari qty
select nama_produk, qty
from tr_penjualan_dqlab
group by 1,2; 

-- ambil jumlah qty dari grouping nama_produk dari qty
select nama_produk, qty
from tr_penjualan_dqlab
group by nama_produk;

-- ambil jumlah qty dari hasil grouping nama_produk terhadap seluruh row pada table transaksi
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
order by sum(qty) desc;

-- ambil jumlah qty 2 dari hasil grouping nama_produk terhadap seluruh row pada table transaksi 
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
having sum(qty) > 2
order by sum(qty) desc;

-- latihan mandiri
-- melihat daftar nama_produk yang total jumlah produk terjual perkelompok nama produk adalah diatas nilai 4
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
having sum(qty) > 2
order by sum(qty) desc;

-- melihat daftar nama_produk yang total jumlah produk terjual perkelompok nama_produk sama dengan 9
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
having sum(qty) = 9
order by sum(qty) desc;

-- melihat daftar keompok nama_produk dan total nilai penjualan (harga dikalikan jumlah dikurangi diskon) 
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
order by sum(qty*harga) desc;






