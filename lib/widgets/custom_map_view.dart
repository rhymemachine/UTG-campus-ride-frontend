// ignore_for_file: must_be_immutable, deprecated_member_use
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomMapView extends StatefulWidget {

  double? height;
  double? width;
  Alignment? alignment;

  ///a [CustomMapView] it can be used for showing any type of images
  /// it will shows the placeholder image if image is not found on network image
  CustomMapView({
    this.height,
    this.width,
    this.alignment,
  });

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(13.451290, -16.596900),
    zoom: 10,
  );

  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414,
  // );

  @override
  State<CustomMapView> createState() => _CustomMapViewState();
}

class _CustomMapViewState extends State<CustomMapView> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  // Define markers as a Set
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _addMarkers(); // Add markers on initialization
  }

  // Function to add multiple markers
  void _addMarkers() {



    setState(() {
      _markers.addAll([
        Marker(
          markerId: MarkerId('marker_1'),
          position: LatLng(13.451290, -16.596900), // Example location
          infoWindow: InfoWindow(
            title: 'WestFeild-Cooperative',
            snippet: 'Pickup Point 1',
          ),
        ),
        Marker(
          markerId: MarkerId('marker_2'),
          position: LatLng(13.401290, -16.616900), // Example location
          infoWindow: InfoWindow(
            title: 'Tabokoto',
            snippet: 'Pickup Point 2',
          ),
        ),
        Marker(
          markerId: MarkerId('marker_3'),
          position: LatLng(13.402290, -16.606900), // Example location
          infoWindow: InfoWindow(
            title: 'Lamin',
            snippet: 'Pickup Point 3',
          ),

        ),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.alignment!,
      child: GoogleMap(
        mapType: MapType.terrain,
        initialCameraPosition: CustomMapView._kGooglePlex,
        markers: _markers,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
