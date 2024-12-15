import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'notes_controller.dart';

class AddNotePage extends StatelessWidget {
  final NotesController notesController = Get.find();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Catatan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Judul',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Deskripsi',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final title = titleController.text.trim();
                final description = descriptionController.text.trim();

                if (title.isNotEmpty && description.isNotEmpty) {
                  notesController.addNote(title, description);
                  Get.back();
                } else {
                  Get.snackbar('Error', 'Judul dan Deskripsi tidak boleh kosong.',
                      snackPosition: SnackPosition.BOTTOM);
                }
              },
              child: Text('Simpan'),
            )
          ],
        ),
      ),
    );
  }
}
