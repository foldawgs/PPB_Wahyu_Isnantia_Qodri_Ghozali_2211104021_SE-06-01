import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 237, 132),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Rekomendasi Wisata di Banyumas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> wisataList = [
    {
      'image':
          'img/1.TelagaSunyi.png',
      'title': 'Telaga Sunyi Purwokerto',
      'description':
          'Salah satu wisata alam di sekitar Baturraden yang sampai saat ini masih terjaga keasriannya adalah Telaga Sunyi. Berada di tengah hutan pinus dan damar membuat suasana Telaga Sunyi sepi dan menenangkan. ',
    },
    {
      'image':
          'img/2.TamanAndhang.png',
      'title': 'Taman Andhang Pangrenan Purwokerto',
      'description':
          'Merupakan objek wisata buatan berupa taman kota berbasis ruang terbuka hijau. Yang menariknya, kita dapat melakukan berbagai kegiatan wisata seperti wisata kuliner, wahana bermain anak-anak ataupun sekedar menikmati udara sejuk dan berelaksasi. Selain itu, tempat ini cocok buat kalian yang suka jalan santai atau jogging pagi ataupun sore hari.',
    },
    {
      'image':
          'img/3.TheVillagePurwokerto.png',
      'title': 'The Village Purwokerto',
      'description':
          'Sebuah wisata kota yang menghadirkan taman publik seluas 2.5 hektar di tengah Karisidenan Banyumas. Diresmikan pada tanggal 7 Februari 2018 dan mulai dibuka untuk umum mulai tanggal 9 Februari 2018. The Village juga menawarkan kesempatan untuk bertamasya dengan rancangan bangunannya yang memadukan karakteristik Barat dan Nusantara.',
    },
    {
      'image':
          'img/4.HutanPinusLimpakuwus.png',
      'title': 'Hutan Pinus Limpakuwus',
      'description':
          'Hutan yang berada di kawasan wisata Baturaden, yang berada di ketinggian 750 mdpl. Tempat ini cocok menjadi tempat wisata dari berbagai kalangan. Tidak hanya pemandangnnya saja yang indah, Hutan Pinus limpakuwus juga memiliki fasilitas penunjang seperti montain slide, playground, flyng fox, paint ball, dan ATV.',
    },
    {
      'image': 
          'img/5.NewSmallWorld.png',
      'title': 'New Small World',
      'description':
          'Obyek wisata yang memiliki berbagai miniatur landmark dan bangunan yang menjadi ikon berbagai negara di dunia. Setiap orang yang berkunjung ke sini akan dapat melihat seperti apa Menara Miring Pisa, Kolosium, Gedung Putih, Menara Eiffel, dan ikon dunia lainnya. Ada juga miniatur bangunan khas Indonesia.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
                title: const Text('Rekomendasi Wisata di Banyumas'),
                background: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 237, 132),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 500,
                  margin: const EdgeInsets.only(bottom: 10),
                  color: Colors.amber[600],
                  child: Column(
                    children: [
                        Image.asset(
                        wisataList[index]['image']!,
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        wisataList[index]['title']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        wisataList[index]['description']!,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          
                        },
                        child: const Text('Info Lebih Lanjut'),
                      ),
                    ],
                  ),
                );
              },
              childCount: wisataList.length,
            ),
          ),
        ],
      ),
    );
  }
}
