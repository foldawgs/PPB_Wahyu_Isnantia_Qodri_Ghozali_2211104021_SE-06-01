# Cover 
<div align="center">
LAPORAN PRAKTIKUM <br>
PEMROGRAMAN PERANGKAT BERGERAK <br>
<br>
MODUL XII <br>
Maps Places Firebase <br>

<img src="https://lac.telkomuniversity.ac.id/wp-content/uploads/2021/01/cropped-1200px-Telkom_University_Logo.svg-270x270.png" width="250px">

<br>

Disusun Oleh: <br>
Wahyu Isnantia Qodri Ghozali/2211104021 <br>
SE-06-01 <br>

<br>

Asisten Praktikum : <br>
Muhammad Faza Zulian Gesit Al Barru <br>
Aisyah Hasna Aulia <br>

<br>

Dosen Pengampu : <br>
Yudha Islami Sulistya, S.Kom., M.Cs <br>

<br>

PROGRAM STUDI S1 REKAYASSA PERANGKAT LUNAK <br>
FAKULTAS INFORMATIKA <br> 
TELKOM UNIVERSITY PURWOKERTO <br>

</div>

# Guided

## Source Code `main.dart`
```
import 'package:flutter/material.dart';
import 'package:praktikum12/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GoogleMapsView(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
```
## Source Code `homepage.dart`
```
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsView extends StatefulWidget {
  const GoogleMapsView({super.key});

  @override
  State<GoogleMapsView> createState() => _GoogleMapsViewState();
}

class _GoogleMapsViewState extends State<GoogleMapsView> {
  static final LatLng _kMapCenter = LatLng(-7.4305913, 109.2511863);
  static final CameraPosition _kInitialPosition = CameraPosition(
      target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0
  );
  Set<Marker> _createMarker(){
    return {
      Marker(
        markerId: MarkerId("marker_1"),
        position: _kMapCenter,
        infoWindow: InfoWindow(title: "Marker 1"),
        rotation: 90
      ),
      Marker(
        markerId: MarkerId("marker_2"),
        position: LatLng(-6.9733165, 107.6281415),
      )
    };
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Maps Demo"),
      ),
      body: GoogleMap(
        initialCameraPosition: _kInitialPosition,
        myLocationEnabled: true,
      )
    );
  }
}
```
## Output Code:
<img src="img/guided.png" width="300px">

# Unguided

## Source Code `main.dart`:
```
import 'package:flutter/material.dart';
import 'package:praktikum12/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GoogleMapsView(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
```
## Source Code `homepage.dart`:
```
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker/place_picker.dart';

class GoogleMapsView extends StatefulWidget {
  const GoogleMapsView({super.key});

  @override
  State<GoogleMapsView> createState() => _GoogleMapsViewState();
}

class _GoogleMapsViewState extends State<GoogleMapsView> {
  static final LatLng _kMapCenter = LatLng(-7.4939931, 109.121921);
  static final CameraPosition _kInitialPosition = CameraPosition(
      target: _kMapCenter, zoom: 10.0, tilt: 0, bearing: 0);

  Set<Marker> _createMarker() {
    return {
      Marker(
        markerId: MarkerId("marker_1"),
        position: _kMapCenter,
        infoWindow: InfoWindow(title: "Marker 1"),
      ),
      Marker(
        markerId: MarkerId("marker_2"),
        position: LatLng(-6.9733165, 107.6281415),
      ),
    };
  }

  void showPlacePicker() async {
    LocationResult result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PlacePicker(
          "AIzaSyAlQaKco_YNHzle_nbqEnc_rkBrh5jQUXM", // Ganti dengan API Key yang benar
          displayLocation: _kMapCenter, // Koordinat untuk memulai peta
        ),
      ),
    );
    if (result != null) {
      print("Selected location: ${result.latLng}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Maps Demo"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: showPlacePicker,
          ),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: _kInitialPosition,
        myLocationEnabled: true,
        markers: _createMarker(),
        onMapCreated: (controller) {
          // Perform additional setup if needed
        },
      ),
    );
  }
}
```

## Output Code:
<img src="img/unguided1.png" width="300px">
<img src="img/unguided2.png" width="300px">

## Deskripsi:
Di file `main.dart` akan dibuat aplikasi Flutter dengan `GoogleMapsView` sebagai halaman utama yang menggunakan Material Design dan tema berbasis warna ungu. Di file `homepage.dart` akan ditampilkan peta menggunakan Google Maps dengan fitur marker di beberapa lokasi serta pencarian lokasi menggunakan `PlacePicker`. Peta memiliki posisi awal di Purwokerto dan menyediakan interaksi dengan tombol pencarian lokasi yang menampilkan koordinat lokasi yang dipilih.