import 'package:flutter/material.dart';
import 'package:liak_kuiz/about_page.dart';

class HomePage extends StatefulWidget {
  final String username;

  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Pagi, ${widget.username}'),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Apa itu Bank Sampah Keliling?'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
              child: Text('Tentang Bank Sampah Keliling'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: schedules.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image.network(
                        schedules[index].imageUrl,
                        width: 50, // Atur lebar gambar
                        height: 50, // Atur tinggi gambar
                        fit: BoxFit.cover, // Mengatur cara gambar ditampilkan
                      ),
                      title: Text(schedules[index].coverageArea),
                      subtitle: Text(
                        '${schedules[index].wasteBankName} - ${schedules[index].implementationDate} ${schedules[index].startTime} - ${schedules[index].endTime}',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Data dummy untuk jadwal pengambilan sampah
List<Schedule> schedules = [
  Schedule(
    coverageArea: 'Suryodiningratan dan sekitarnya',
    wasteBankName: 'Bank Sampah Gemah Ripah',
    implementationDate: '2024-10-05',
    startTime: '08:00',
    endTime: '10:00',
    imageUrl: 'https://example.com/logo_gemah_ripah.png',
  ),
  Schedule(
    coverageArea: 'Prawirodirjan dan sekitarnya',
    wasteBankName: 'Bank Sampah Hijau Lestari',
    implementationDate: '2024-10-06',
    startTime: '09:00',
    endTime: '11:00',
    imageUrl: 'https://example.com/logo_hijau_lestari.png',
  ),
  Schedule(
    coverageArea: 'Mantrijeron dan sekitarnya',
    wasteBankName: 'Bank Sampah Bersih Sejahtera',
    implementationDate: '2024-10-07',
    startTime: '07:30',
    endTime: '09:30',
    imageUrl: 'https://pengulon-buleleng.desa.id/assets/files/artikel/sedang_1570754533Logo%20Sampah%20Pelita%20AA.jpg',
  ),
  Schedule(
    coverageArea: 'Ngupasan dan sekitarnya',
    wasteBankName: 'Bank Sampah Asri Jaya',
    implementationDate: '2024-10-08',
    startTime: '08:30',
    endTime: '10:30',
    imageUrl: 'https://kampungkb.bkkbn.go.id/storage/34/3402/340215/3402152003/6402/intervensi/2022/12/25/470841/16719960030.jpeg',
  ),
  Schedule(
    coverageArea: 'Pakuncen dan sekitarnya',
    wasteBankName: 'Bank Sampah Lestari Mandiri',
    implementationDate: '2024-10-09',
    startTime: '09:00',
    endTime: '11:00',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE1scMeVYuh99qWcbJQXmj85f3nb2Ck126Zw&s',
  ),
  Schedule(
    coverageArea: 'Wirobrajan dan sekitarnya',
    wasteBankName: 'Bank Sampah Sejahtera Abadi',
    implementationDate: '2024-10-10',
    startTime: '07:00',
    endTime: '09:00',
    imageUrl: 'https://assets-a1.kompasiana.com/items/album/2021/07/29/logo-bank-sampah-6101e3e41525104da36e21f2.png',
  ),
  Schedule(
    coverageArea: 'Notoprajan dan sekitarnya',
    wasteBankName: 'Bank Sampah Berkah',
    implementationDate: '2024-10-11',
    startTime: '08:00',
    endTime: '10:00',
    imageUrl: 'https://pengulon-buleleng.desa.id/assets/files/artikel/sedang_1570754533Logo%20Sampah%20Pelita%20AA.jpg',
  ),
  // Tambahkan data dummy lainnya sesuai dengan kebutuhan
];

class Schedule {
  String coverageArea;
  String wasteBankName;
  String implementationDate;
  String startTime;
  String endTime;
  String imageUrl;

  Schedule({
    required this.coverageArea,
    required this.wasteBankName,
    required this.implementationDate,
    required this.startTime,
    required this.endTime,
    required this.imageUrl,
  });
}