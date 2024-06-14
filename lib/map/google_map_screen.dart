import 'dart:async';

import 'package:company_list/core/common/page_holder.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapScreen> createState() => GoogleMapScreenState();
}

class GoogleMapScreenState extends State<GoogleMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center =  LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return PageHolder(
      appTitle: "Google map",
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: const CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        polygons: {
          Polygon(
            polygonId: const PolygonId('polygon_1'),
            points: _createPolygonPoints(),
            strokeWidth: 2,
            strokeColor: Colors.red,
            fillColor: Colors.blue.withOpacity(0.5),
          ),
        },
      ),
    );
  }

  List<LatLng> _createPolygonPoints() {
    // Define the points of the polygon
    return <LatLng>[
      LatLng(45.501690, -122.656475),
      LatLng(45.498280, -122.651940),
      LatLng(45.496950, -122.656140),
      LatLng(45.497770, -122.659940),
    ];
  }
}
