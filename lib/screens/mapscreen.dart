import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          setState(() {
            mapController = controller;
          });
        },
        initialCameraPosition: const CameraPosition(
          target: LatLng(16.495503 , 80.510492), // Change these coordinates to your desired location
          zoom: 12.0,
        ),
      ),
    );
  }
}