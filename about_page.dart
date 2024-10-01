import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Bank Sampah Keliling'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Tanda panah
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya (Home Page)
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Menampilkan gambar
            Image.network(
              'https://drive.google.com/uc?id=1oIbQLjMKiLVNHdrizPFNYnjq-GxNRlkt', // Ganti dengan URL gambar yang sesuai
              width: double.infinity, // Mengatur lebar gambar
              height: 200, // Mengatur tinggi gambar
              fit: BoxFit.cover, // Mengatur cara gambar ditampilkan
            ),
            SizedBox(height: 16),
            Text(
              'Bank Sampah Keliling adalah inisiatif yang bertujuan untuk meningkatkan partisipasi masyarakat dalam pengelolaan sampah dan pencegahan pencemaran lingkungan. Biasanya dilaksanakan oleh komunitas atau organisasi non-pemerintah, bank sampah keliling menggunakan kendaraan khusus untuk mengumpulkan sampah dari rumah ke rumah atau dari lokasi yang telah ditentukan.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Setelah dikumpulkan, sampah tersebut dibersihkan, dipilah, dan diolah menjadi bahan daur ulang. Melalui bank sampah keliling, masyarakat diberikan kesempatan untuk berpartisipasi aktif dalam menjaga lingkungan sekaligus memperoleh insentif berupa hadiah atau uang sebagai imbalan dari sampah yang mereka berikan.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}