import 'package:get/get.dart';

class Note {
  String title;
  String description;

  Note({required this.title, required this.description});
}

class NotesController extends GetxController {
  var notes = <Note>[].obs;

  void addNote(String title, String description) {
    notes.add(Note(title: title, description: description));
  }

  void deleteNoteAt(int index) {
    notes.removeAt(index);
  }
}
