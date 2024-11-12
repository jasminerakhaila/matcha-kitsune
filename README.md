# About <code style="color : green">Matcha Kitsune</code> 

Matcha Kitsune is an _e-commerce_ platform where everyone can enjoy shopping with happiness. <br>

"A great product comes from a great quality."
-- Matcha Kitsune

## Assignments: Tugas 8
(will be answered in Bahasa Indonesia)

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




<details>
  <summary>Assignment Sebelumnya</summary>

  <!-- Konten di sini akan disembunyikan di bawah toggle -->

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

