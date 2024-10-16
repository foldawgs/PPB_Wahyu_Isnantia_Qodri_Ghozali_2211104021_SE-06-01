import 'package:flutter/material.dart';
void main() {
  runApp(const FlexibleExpandedScreen(title: 'Flexible and Expanded Demo'));
}

class FlexibleExpandedScreen extends StatefulWidget {
  const FlexibleExpandedScreen({super.key, required this.title});
  final String title;

  @override
  State<FlexibleExpandedScreen> createState() => _FlexibleExpandedScreenState();
}

class _FlexibleExpandedScreenState extends State<FlexibleExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                const Text("Flexible"),
                // Flexible
                Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.red,
                    ),
                    Flexible(
                      child: Container(
                        height: 100,
                        color: Colors.green,
                        child: const Text(
                          "Flexible takes up the remaining space but can shrink if needed.",
                        ),
                      ),
                    ),
                    const Icon(Icons.sentiment_very_satisfied),
                  ],
                ),
                const SizedBox(height: 20),
                // Expanded
                const Text("Expanded"),
                Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.red,
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.green,
                        child: const Text(
                          "Expanded forces the widget to take up all the remaining space.",
                        ),
                      ),
                    ),
                    const Icon(Icons.sentiment_very_satisfied),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
