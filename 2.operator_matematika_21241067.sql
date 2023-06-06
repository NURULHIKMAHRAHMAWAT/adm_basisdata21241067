-- SELECT statement dengan 1 nilai hasil literal
select 77 as bil_bulat; -- nilai literal bilangan bulat (Integer)
select 'Jakarta'as string_; -- nilai literal tipedata string
select '2023/05/16' as tipe_date; -- nilai literal pada tipedata date
select 77 < 3 as tipe_boolean; -- nilai literal pada tipe data boolean, 1 = true dan 0 = false

 -- select statement dengan beberapa nilai literal
 select 77 as angka, true as nilai_logika, 'undikma' as teks;
 
 -- select statement denagn NULL
 select NULL as kosong;
 
 -- operator matematika
 select 5%2 as sisa_bagi, 5/2 as hasil_bagi_1, 5 DIV 2 as hasil_bagi_2;
 
 -- Latihan mandiri 
 select 4*2 as hasil_kali, (4*8)%7 as sisa_kali_bagi, (4*8) MOD 7 as sisa_kali_bagi; 
 
 -- operator Matematika untuk menghasilkan total beli (qty * harga) pada table tr_penjualan
 use tugas2;
 select qty*harga as total_beli from tr_penjualan_dqlab;
 select nama_produk, qty, harga, qty*harga as total_beli from tr_penjualan_dqlab;
 
 -- operator perbandingan
 select 5=5, 5<>5, 5<>4, 5!=4, 5!=4, 5<>4;
 select qty > 3 from tr_penjualan_dqlab;
 
 -- fungsi
 select now(), year('2022-05-03'), datediff('2022-05-16','2022-05-01'), day(now());
 
 -- mendapatkan lastest buy dari produk
 select datediff(now(), tgl_transaksi) as latest_buy from tr_penjualan_dqlab;
 select nama_produk, datediff(now(), tgl_transaksi) as latest_buy from tr_penjualan_dqlab;
 
 -- klausal WHERE filtering atau penyaringan
 -- ambil nama produk, dan qty dari table tr_penjualan_dqlab yang qty lebih dari 2
 select nama_produk, qty
 from tr_penjualan_dqlab
 where qty > 2;
 
 -- multi kriteria klausal where
 -- ambil nama_produk, dan qty, dari tabel tr_penjualan_dqlab, yang qtylebih dari 2 dan bulan transaksi 6
 select nama_produk, qty, tgl_transaksi
 from tr_penjualan_dqlab
 where qty > 2 AND month(tgl_transaksi) = 6;
 
 -- latihan mandiri
 select 1=true, 1=false, 5>=5, 5.2=5.20000, NULL=1, NULL=NULL;
 