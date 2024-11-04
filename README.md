# About <code style="color : green">Matcha Kitsune</code> 

Matcha Kitsune is an _e-commerce_ platform where everyone can enjoy shopping with happiness. <br>

"A great product comes from a great quality."
-- Matcha Kitsune

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

