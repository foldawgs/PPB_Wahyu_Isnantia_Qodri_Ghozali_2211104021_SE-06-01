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