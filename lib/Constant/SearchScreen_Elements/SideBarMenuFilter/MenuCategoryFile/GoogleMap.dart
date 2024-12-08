import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:venta/Constant/InputElement.dart';
import 'package:venta/Controller/SearchController.dart';

class Googlemap extends StatefulWidget {
  Googlemap({super.key});

  @override
  _GooglemapState createState() => _GooglemapState();
}

class _GooglemapState extends State<Googlemap> {
  final _controller = Get.put(Searchcontroller());

  LatLng? _currentPosition;
  String _address = "";

  Future<void> _getUserLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
        return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.always && permission == LocationPermission.whileInUse){
        setState(() {
          _currentPosition = LatLng(0, 0);
        });
      }
    }

    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude);
    });
    print(_currentPosition);

    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemarks[0];

    setState(() {
      _address = "${place.name}, ${place.locality}, ${place.country}";
      print("Adres: ${_address}");
      _controller.mapController.value.text = _address;
    });
  }

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(()=>
      Expanded(
        child: Column(
          children: [
            Container(
              height: 53,
              child: Inputelement(
                border_radius: 10,
                label_color: Color.fromRGBO(102, 102, 102, 1),
                border_color: Color.fromRGBO(45, 45, 45, 1),
                label: "Məntəqə seçin",
                suffixIcon: IconButton(
                    onPressed: () {}, icon: Icon(Icons.search, size: 20)),
                controller: _controller.mapController.value,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: _currentPosition == null
                    ? Center(child: CircularProgressIndicator())
                    : GoogleMap(
                        onTap: (argument) async{
                          List<Placemark> placemarks = await placemarkFromCoordinates(argument.latitude, argument.longitude);
                          setState(() {
                            _currentPosition = argument;
                            _address = "${placemarks[0].name}, ${placemarks[0].locality}, ${placemarks[0].country}";
                            _controller.mapController.value.text = _address;
                          });
                          
                          
                           
                        },
                        initialCameraPosition: CameraPosition(
                          target: _currentPosition!,
                          zoom: 14,
                        ),
                        myLocationEnabled: true,
                        mapType: MapType.normal,
                        markers: {
                          Marker(
                            markerId: MarkerId("current_position"),
                            position: _currentPosition!,
                            infoWindow: InfoWindow(title: "Seçilmiş məntəqəm"),
                          ),
                          
                        },
                        onMapCreated: (GoogleMapController controller) {},
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
