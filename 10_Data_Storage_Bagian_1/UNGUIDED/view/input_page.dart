import 'package:flutter/material.dart';
import 'package:praktikum10/helper/db_helper.dart';

class InputPage extends StatefulWidget {
  final VoidCallback onSave;
  const InputPage({super.key, required this.onSave});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _hobiController = TextEditingController();
  final DatabaseHelper dbHelper = DatabaseHelper();

  void _saveData() async {
    await dbHelper.insert({
      'nama': _namaController.text,
      'nim': _nimController.text,
      'alamat': _alamatController.text,
      'hobi': _hobiController.text,
    });
    widget.onSave();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Biodata Mahasiswa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(labelText: "Nama"),
            ),
            TextField(
              controller: _nimController,
              decoration: const InputDecoration(labelText: "NIM"),
            ),
            TextField(
              controller: _alamatController,
              decoration: const InputDecoration(labelText: "Alamat"),
            ),
            TextField(
              controller: _hobiController,
              decoration: const InputDecoration(labelText: "Hobi"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveData,
              child: const Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}
