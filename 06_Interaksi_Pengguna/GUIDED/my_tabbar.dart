import 'package:flutter/material.dart';

class MyTabbar extends StatelessWidget {
  const MyTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My TabBar App',
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Contoh Tab Bar'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_car),
                    Text('Car'),
                  ],
                  ),
                ),
                Tab(
                  icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_bus),
                    Text('Bus'),
                  ],
                  ),
                ),
                Tab(
                  icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_transit),
                    Text('Transit'),
                  ],
                  ),
                ),
                Tab(
                  icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_boat),
                    Text('Boat'),
                  ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_bus),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_boat),
            ],
          ),
        ),
      ),
    );
  }
}