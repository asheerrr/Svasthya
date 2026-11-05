
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HospitalMap extends StatefulWidget {
  const HospitalMap({super.key});

  @override
  State<HospitalMap> createState() => _HospitalMapState();
}

class _HospitalMapState extends State<HospitalMap> {

  // Initial map location (Kerala)
  static const LatLng initialLocation =
      LatLng(10.8505, 76.2711);

  // Hospital markers
  final Set<Marker> hospitalMarkers = {
    const Marker(
      markerId: MarkerId('hospital1'),
      position: LatLng(10.8505, 76.2711),
      infoWindow: InfoWindow(
        title: 'Sample Hospital 1',
        snippet: 'Healthcare Services',
      ),
    ),

    const Marker(
      markerId: MarkerId('hospital2'),
      position: LatLng(10.9000, 76.3000),
      infoWindow: InfoWindow(
        title: 'Sample Hospital 2',
        snippet: 'Medical Centre',
      ),
    ),

    const Marker(
      markerId: MarkerId('hospital3'),
      position: LatLng(10.8000, 76.2500),
      infoWindow: InfoWindow(
        title: 'Sample Hospital 3',
        snippet: 'Emergency Care',
      ),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nearby Hospitals'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: initialLocation,
          zoom: 10,
        ),

        markers: hospitalMarkers,

        mapType: MapType.normal,

        zoomControlsEnabled: true,
      ),
    );
  }
}
