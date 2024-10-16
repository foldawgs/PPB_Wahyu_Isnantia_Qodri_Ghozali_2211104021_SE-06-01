import 'package:flutter/material.dart';

class ListViewSeparatedExample extends StatelessWidget {
  const ListViewSeparatedExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> colorCodes = <int>[600, 500, 100];
    final List<String> entries = <String>['A', 'B', 'C'];

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView.separated"),
        backgroundColor: Colors.amber,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(
              child: Text('Entry ${entries[index]}'),
            ),
          );
        }, separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
