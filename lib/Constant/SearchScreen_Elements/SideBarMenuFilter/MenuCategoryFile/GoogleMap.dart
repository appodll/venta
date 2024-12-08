import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Googlemap extends StatelessWidget {
  final LatLng _initialPosition = LatLng(40.4093, 49.8671);
  Googlemap({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: GoogleMap(
                initialCameraPosition: CameraPosition(target: _initialPosition, zoom: 12),
                mapType: MapType.normal,
                markers: {
          Marker(
              markerId: MarkerId("initial_position"),
              position: _initialPosition,
              infoWindow: InfoWindow(title: "Baku"))
                },
              ),
        ));
  }
}
