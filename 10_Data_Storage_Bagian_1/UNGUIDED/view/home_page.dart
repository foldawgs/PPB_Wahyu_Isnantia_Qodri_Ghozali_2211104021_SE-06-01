import 'package:flutter/material.dart';
import 'package:praktikum10/helper/db_helper.dart';
import 'package:praktikum10/view/input_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DatabaseHelper dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> mahasiswaList = [];

  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  void _refreshData() async {
    final data = await dbHelper.queryAll();
    setState(() {
      mahasiswaList = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SQLite Biodata Mahasiswa", textAlign: TextAlign.center),
      ),
      body: mahasiswaList.isEmpty
          ? const Center(child: Text("Belum ada data mahasiswa"))
          : ListView.builder(
              itemCount: mahasiswaList.length,
              itemBuilder: (context, index) {
                final item = mahasiswaList[index];
                return ListTile(
                  title: Text(item['nama']),
                  subtitle: Text("NIM: ${item['nim']}\nAlamat: ${item['alamat']}\nHobi: ${item['hobi']}"),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InputPage(onSave: _refreshData),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
