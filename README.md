# About <code style="color : green">Matcha Kitsune</code> 

Matcha Kitsune is an _e-commerce_ platform where everyone can enjoy shopping with happiness. <br>

"A great product comes from a great quality."
-- Matcha Kitsune

## Assignments: Tugas 9
(will be answered in Bahasa Indonesia)

### Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
 Membuat model saat berinteraksi dengan data JSON dalam aplikasi sangat penting karena model berfungsi sebagai cetak biru yang mengatur dan menstandardisasi struktur data. Ini memastikan bahwa data yang kita tangani sesuai dengan struktur yang kita harapkan dan mengurangi risiko error saat aplikasi mencoba mengakses atau memodifikasi data yang tidak terdefinisi atau tidak konsisten. Tanpa model, kita bisa menghadapi masalah saat melakukan parsing atau serialisasi data JSON, karena tidak adanya kejelasan struktur bisa menyebabkan kesalahan seperti `KeyError` atau masalah tipe data yang tidak cocok. Dengan model, pengembangan menjadi lebih terorganisir dan kode lebih mudah untuk dipelihara serta di-debug.


### Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library HTTP yang digunakan dalam tugas ini memfasilitasi komunikasi antara aplikasi Flutter dan backend Django dengan memungkinkan pengiriman dan penerimaan data melalui protokol HTTP. Library ini sangat penting untuk operasi seperti GET untuk mengambil data, POST untuk mengirim data baru ke server, dan PUT atau DELETE untuk mengupdate atau menghapus data yang ada. Penggunaan library ini memungkinkan aplikasi Flutter untuk secara efektif berinteraksi dengan API yang disediakan oleh server, mengelola session pengguna, dan memproses respons yang dikembalikan oleh server, sehingga memudahkan pengembangan fitur yang membutuhkan pertukaran data dinamis dan realtime dengan backend.


### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` berfungsi sebagai wrapper untuk request HTTP yang mengelola cookie dalam aplikasi Flutter, memastikan bahwa cookie sesi disertakan dalam setiap komunikasi dengan server untuk menjaga keberlanjutan sesi pengguna. Menggunakan satu instance `CookieRequest` yang dibagikan ke seluruh komponen aplikasi memungkinkan pengelolaan sesi yang konsisten dan efisien, menghindari duplikasi kode dan memastikan bahwa perubahan status sesi seperti login atau logout terintegrasi secara seragam ke seluruh aplikasi.


### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Proses pengiriman data dari input pengguna hingga ditampilkan di aplikasi Flutter melibatkan beberapa langkah: pengguna memasukkan data melalui UI Flutter, data tersebut dikirim sebagai request HTTP ke server menggunakan library HTTP Flutter. Server menerima dan memproses data tersebut, kemudian mengirimkan respons kembali ke Flutter. Aplikasi Flutter menerima respons ini, memprosesnya, dan memperbarui UI sesuai dengan hasil yang diterima, menampilkan data baru atau pesan yang relevan kepada pengguna.


### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Register (Pendaftaran Akun):

- Pada Flutter: Pengguna mengisi formulir pendaftaran yang mencakup username, password, dan data lain yang relevan. Flutter mengirimkan data ini melalui request HTTP POST ke server Django.
- Pada Django: Server menerima data tersebut, memvalidasi input, dan menciptakan akun baru dalam database jika data valid dan belum ada dalam sistem. Django kemudian mengirimkan respons kembali ke Flutter, biasanya berupa konfirmasi berhasil atau error jika ada masalah.

Login (Autentikasi):

- Pada Flutter: Pengguna memasukkan username dan password melalui interface login. Flutter mengirimkan kredensial ini ke Django menggunakan request HTTP POST.
- Pada Django: Server menerima kredensial, memverifikasi terhadap data yang tersimpan di database, dan jika kredensial cocok, server menghasilkan dan mengirimkan token autentikasi (seperti JWT atau session ID) kembali ke Flutter. Django juga dapat mengatur cookie sesi pada tahap ini untuk manajemen sesi yang berkelanjutan.
- Pada Flutter: Setelah menerima token atau konfirmasi login, Flutter menyimpan token tersebut untuk digunakan dalam request berikutnya sebagai bukti autentikasi, dan pengguna diarahkan ke menu atau dashboard utama aplikasi.

Logout (Keluar):

- Pada Flutter: Pengguna memilih untuk logout, dan Flutter mengirimkan request ke Django untuk mengakhiri sesi.
- Pada Django: Server menerima request logout, menghapus atau menandai token atau sesi yang terkait sebagai tidak valid, dan mengirimkan respons ke Flutter yang menandakan bahwa sesi telah berakhir.
- Pada Flutter: Flutter menerima konfirmasi logout, menghapus token yang disimpan atau data sesi lainnya, dan mengembalikan pengguna ke layar login atau halaman awal.


### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
1. Setup Autentikasi pada Django
- Model: Pastikan Django User model siap digunakan.
- Endpoints: Buat views untuk login, register, dan logout.
- Tokens: Gunakan Django REST framework untuk handle token-based authentication.

2. Integrasi Sistem Autentikasi pada Flutter
- Dependensi: Tambahkan http dan provider pada pubspec.yaml.
- Form: Buat form untuk login dan registrasi dengan TextFormField.
- Auth Service: Implementasikan service di Flutter yang membuat HTTP requests ke Django untuk autentikasi.

3. Pembuatan Model Kustom
- Model: Buat model di Flutter yang sesuai dengan data yang diterima dari Django (misalnya User model).

4. Fetch Data dari Django untuk Ditampilkan ke Flutter
- Fetch Function: Tulis fungsi yang membuat HTTP GET request ke Django untuk mengambil data yang dibutuhkan.
- Provider: Gunakan Provider untuk state management dan penyimpanan data yang di-fetch.


5. Integrasi Form Flutter dengan Layanan Django
- Submit: Pastikan form di Flutter dapat submit data ke Django melalui HTTP POST request.
- Validation: Handle validasi input pada Flutter dan tampilkan error yang dikirim dari Django.


6. Implementasi Fitur Logout
- Logout Endpoint: Kirim request ke endpoint logout Django.
- Clear Data: Bersihkan data yang terkait dengan user di Flutter, misalnya tokens atau user info.






<details>
  <summary>Assignment Sebelumnya</summary>
  

  <!-- Konten di sini akan disembunyikan di bawah toggle -->
   ## Assignments: Tugas 8
  ### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Dalam pemrograman Flutter, penggunaan kata kunci const memiliki peran penting dalam meningkatkan efisiensi dan kinerja aplikasi. Kata kunci const digunakan untuk mendeklarasikan nilai yang tidak berubah-ubah sepanjang waktu eksekusi program. Ini berarti bahwa variabel atau objek yang dideklarasikan dengan const diinisialisasi saat waktu kompilasi dan nilainya harus sudah diketahui sebelum aplikasi dijalankan.

Penggunaan const membawa beberapa keuntungan, seperti:
1. Optimisasi Performa: Flutter menggunakan const untuk membuat instansi widget yang efisien. Ketika sebuah widget dideklarasikan sebagai const, Flutter tidak perlu mengalokasikan memori baru setiap kali widget tersebut dibuat. Ini mengurangi overhead karena memori yang sama digunakan ulang setiap kali widget const dipanggil
2. Pengurangan Jumlah Garbage Collection: Karena objek const bersifat imutabel dan memiliki alokasi memori yang tetap, ini mengurangi beban pada garbage collector. Dengan demikian, aplikasi menjadi lebih responsif dan lancar.
3. Ketetapan dan Keamanan Kode: Menggunakan const membantu menghindari bugs karena memastikan bahwa nilai tidak akan berubah di tempat lain dalam kode. Ini meningkatkan keandalan dan keamanan kode.

Kapan sebaiknya menggunakan const:
- Deklarasi Widget yang Tidak Berubah: Gunakan const untuk mendeklarasikan widget atau objek yang tidak memerlukan perubahan setelah diinisialisasi, seperti teks statis, warna, dan padding yang tidak berubah selama aplikasi berjalan.
- Nilai Konfigurasi: Nilai konfigurasi yang tidak berubah, seperti konstanta numerik, string, atau array yang digunakan secara berulang dalam aplikasi.

Kapan sebaiknya tidak menggunakan const:
- Deklarasi Objek dengan Nilai Dinamis: Tidak menggunakan const ketika nilai objek atau widget bisa berubah, seperti nilai yang bergantung pada state atau data dari database.
- Ketika Nilai Tidak Diketahui Saat Kompilasi: Tidak memungkinkan untuk menggunakan const jika nilai objek tidak dapat ditentukan saat kompilasi dan hanya diketahui saat runtime.


### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Dalam Flutter, Column digunakan untuk mengatur widget secara vertikal (satu di atas yang lain), sedangkan Row digunakan untuk mengatur widget secara horizontal (satu samping yang lain). Keduanya adalah widget layout yang berasal dari kelas Flex dan memungkinkan penyelarasan serta distribusi ruang antar widget anak dengan properti seperti mainAxisAlignment dan crossAxisAlignment.

Contoh Column:

```
Column(
  children: <Widget>[
    Text('First Item'),
    Text('Second Item'),
    ElevatedButton(onPressed: () {}, child: Text('Click Me'))
  ],
)
```

Contoh Row:
```
Row(
  children: <Widget>[
    Icon(Icons.share),
    Icon(Icons.thumb_up),
    Icon(Icons.thumb_down),
  ],
)
```

Perbedaan utama terletak pada orientasi widget anak: Column untuk susunan vertikal dan Row untuk susunan horizontal. Penggunaan antara keduanya tergantung pada kebutuhan desain antarmuka pengguna Anda.


### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Dalam kode saya, elemen input yang digunakan pada halaman form adalah TextFormField. Di halaman ProductEntryFormPage, saya memiliki tiga TextFormField untuk memasukkan nama produk, amount, dan deskripsi. Elemen-elemen ini memungkinkan pengguna untuk memasukkan teks dan angka yang kemudian divalidasi dan diproses.

Adapun jenis elemen input lain yang tidak digunakan dalam tugas saya:

- DropdownButton: Untuk memilih dari daftar opsi.
- Slider: Untuk memilih nilai dalam rentang tertentu melalui geseran.
- Switch: Untuk mengganti antara dua state (on/off).
- DatePicker: Untuk memilih tanggal.

Elemen-elemen ini dapat digunakan untuk menambahkan lebih banyak fungsi dan interaktivitas tergantung pada kebutuhan aplikasi yang kamu kembangkan. Misalnya, DropdownButton bisa berguna untuk memilih kategori produk, sedangkan DatePicker bisa digunakan jika membutuhkan input tanggal kadaluwarsa produk.


### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Dalam tugas kali ini, saya mengatur tema di aplikasi Flutter dengan menggunakan ThemeData yang ada di dalam MaterialApp. Caranya adalah dengan menentukan warna utama dan warna sekunder melalui primarySwatch dan colorScheme. Di kode yang saya tulis, saya memilih Colors.green sebagai warna utama dan warna khusus lain sebagai warna pendukung.

Menggunakan ThemeData membantu saya memastikan bahwa semua elemen di aplikasi, seperti AppBar, buttons, dan teks, memiliki tampilan yang konsisten. Sehingga, jika nantinya ada perubahan tema atau warna, saya hanya perlu mengubahnya di satu tempat, dan perubahan itu akan berlaku untuk seluruh aplikasi. Ini memudahkan saya dalam mengembangkan dan memelihara tampilan aplikasi.


### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Dalam mengembangkan aplikasi Flutter yang memiliki banyak halaman, navigasi yang efektif dan terstruktur adalah kunci untuk menciptakan pengalaman pengguna yang baik. Untuk mengelola navigasi, saya menggunakan konsep Navigator yang disediakan oleh Flutter, yang memungkinkan navigasi antar halaman dengan mudah. Navigator bekerja seperti stack, di mana halaman dapat ditumpuk satu di atas yang lain, memungkinkan pengguna untuk berpindah maju ke halaman baru atau kembali ke halaman sebelumnya.

Saya mendefinisikan rute dalam MaterialApp menggunakan parameter routes, yang merupakan peta dari string (yang berfungsi sebagai identifier rute) ke builder halaman yang bersangkutan. Ini mempermudah pengaturan dan pemeliharaan navigasi, terutama saat aplikasi berkembang dan memiliki lebih banyak halaman. Selain itu, untuk navigasi yang lebih kompleks, saya bisa menggunakan onGenerateRoute, yang memberikan fleksibilitas lebih dalam menghasilkan rute secara dinamis berdasarkan logika yang didefinisikan.

Juga, saya sering menggunakan push dan pop dari Navigator untuk mengatur alur navigasi. Misalnya, ketika pengguna mengisi formulir dan menekan tombol submit, saya menggunakan Navigator.push untuk membawa mereka ke halaman konfirmasi. Sebaliknya, ketika mereka ingin kembali ke halaman sebelumnya, saya menggunakan Navigator.pop. Dengan pendekatan ini, navigasi dalam aplikasi saya menjadi intuitif dan mudah diatur.



  ## Assignments: Tugas 7
(will be answered in Bahasa Indonesia)

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget yang tidak memiliki state atau kondisi yang berubah; ia bersifat statis dan hanya menampilkan data yang diterimanya, tanpa bereaksi terhadap perubahan data. Contohnya adalah widget yang hanya menampilkan teks atau ikon. Sebaliknya, stateful widget adalah widget yang memiliki state dan bisa berubah selama siklus hidupnya. Widget ini dapat merespon interaksi pengguna atau perubahan data yang terjadi, seperti teks input yang diperbarui atau tombol yang diklik. Perbedaan utamanya adalah stateless widget bersifat konstan dan tidak dapat diperbarui setelah dibangun, sedangkan stateful widget dapat diperbarui dan dikelola oleh sistem Flutter berdasarkan interaksi atau perubahan yang terjadi.

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Pada proyek ini, beberapa widget yang saya digunakan adalah:

- MaterialApp: Menjadi root aplikasi dan mengatur tema serta struktur dasar aplikasi
- Scaffold: Menyediakan struktur halaman, lengkap dengan AppBar dan body untuk konten utama.
- AppBar: Menampilkan bar atas halaman dengan judul "Matcha Kitsune" dan background sesuai tema.
- Padding: Memberikan ruang atau jarak di sekitar widget tertentu untuk estetika dan keteraturan layout.
- Column: Menyusun widget secara vertikal dalam body halaman, memudahkan penyusunan elemen dari atas ke bawah.
- Row: Menyusun widget secara horizontal, digunakan di dalam InfoCard untuk menampilkan NPM, Name, dan Class secara berdampingan.
- InfoCard (custom): Menyimpan data statis seperti NPM, Name, dan Class dalam tampilan kartu dengan teks yang berformat.
- GridView.count: Membuat layout grid dengan tiga kolom yang berisi ItemCard secara otomatis sesuai data.
- Material: Digunakan di dalam ItemCard untuk membentuk kartu dengan warna latar belakang, memberikan kesan interaktif.
- InkWell: Membuat widget dalam ItemCard menjadi interaktif, memungkinkan aksi saat kartu ditekan (menampilkan SnackBar).
- Container: Mengatur layout dan padding dalam kartu serta InfoCard, memberikan kontrol penuh atas ukuran dan tata letak widget.
- Icon: Menampilkan ikon pada setiap item dalam ItemCard sebagai bagian visual utama.
- Text: Menampilkan teks dalam berbagai posisi, termasuk judul, konten kartu, dan pesan SnackBar.


### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi setState() dalam Flutter digunakan untuk memperbarui UI secara dinamis ketika ada perubahan pada state dalam sebuah StatefulWidget. Dengan memanggil setState(), kita memberi tahu Flutter bahwa bagian UI terkait perlu di-render ulang agar menampilkan data terbaru. Variabel yang terdampak oleh setState() adalah variabel-variabel yang dideklarasikan sebagai bagian dari state widget, yaitu variabel yang secara langsung atau tidak langsung mempengaruhi tampilan UI. Misalnya, variabel counter untuk menghitung jumlah klik atau variabel teks yang menampilkan input pengguna—ketika nilainya berubah dan setState() dipanggil, maka UI akan merefleksikan nilai terbaru dari variabel tersebut.


### Jelaskan perbedaan antara const dengan final.
Perbedaan antara const dan final adalah terkait kapan nilainya ditentukan dan seberapa tetap nilainya. const digunakan jika kita sudah mengetahui nilainya dari awal dan nilainya tidak akan berubah. Bahkan semua yang ada di dalam objek tersebut juga tidak dapat diubah (benar-benar tetap). Sementara itu, final nilainya tetap, namun ditentukan saat program berjalan. Jadi, jika kita membutuhkan variabel yang nilainya tidak berubah tetapi baru mengetahui nilainya saat runtime, kita memakai final. Secara kesimpulan, const untuk nilai yang pasti dari awal, sedangkan final untuk nilai yang baru bisa kita ketahui saat program jalan, tapi tetap tidak dapat diubah setelah itu.


### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

Langkah 1: Pada langkah pertama, saya menambahkan data diri seperti NPM, nama, dan kelas ke dalam MyHomePage. Caranya dengan membuat variabel final yang menyimpan informasi ini langsung di kelas MyHomePage. Hal ini memastikan bahwa data diri tampil di halaman utama aplikasi.

Langkah 2: Selanjutnya, saya membuat widget InfoCard yang berfungsi untuk menampilkan data diri tersebut. InfoCard ini berbentuk kartu sederhana yang memuat judul dan isi, disusun secara vertikal menggunakan widget Card dan Column agar tampilan lebih rapi dan terstruktur.

Langkah 3: Setelah itu, saya menambahkan InfoCard ke dalam MyHomePage dengan menempatkan beberapa InfoCard dalam satu Row, sehingga NPM, nama, dan kelas tampil sejajar di bagian atas halaman. Penggunaan Row di sini memungkinkan elemen-elemen ini ditampilkan secara horizontal.

Langkah 4: Berikutnya, saya membuat widget ItemCard untuk menampilkan ikon dan teks setiap menu item. ItemCard ini menggunakan widget Material untuk memberikan latar belakang dan efek bayangan, serta InkWell untuk menangani aksi ketika pengguna menekan menu. Dengan ini, ItemCard bisa tampil interaktif saat digunakan.

Langkah 5: Terakhir, saya mengintegrasikan ItemCard ke dalam MyHomePage dengan menggunakan GridView.count, yang memungkinkan setiap ItemCard ditampilkan dalam bentuk grid yang responsif. Ini membuat halaman utama memiliki layout yang menampilkan informasi pengguna di bagian atas dan menu navigasi di bagian bawah dalam susunan grid.



</details>

