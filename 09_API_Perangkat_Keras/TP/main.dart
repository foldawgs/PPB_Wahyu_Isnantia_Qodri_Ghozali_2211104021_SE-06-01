import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Latihan Memilih Gambar',
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: Colors.yellow,
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              padding: EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: FittedBox(
                      child: Icon(Icons.image_outlined, size: 200, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  icon: Icon(Icons.camera_alt, color: Colors.black),
                  label: Text('Camera', style: TextStyle(color: Colors.black)),
                ),
                SizedBox(width: 10),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  icon: Icon(Icons.photo_library, color: Colors.black),
                  label: Text('Gallery', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                fixedSize: Size(200, 40),
              ),
              child: Text('Hapus Gambar', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
