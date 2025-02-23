import 'package:flutter/material.dart';
import 'package:QoshKel/features/planner/screens/home/widgets/background.dart';
import 'package:QoshKel/features/planner/screens/home/widgets/topsection.dart';
import 'package:QoshKel/features/planner/screens/home/widgets/draggablesection.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  double top = 0.0;
  double initialTop = 0.0;
  final double searchBarHeight = 60.0;

  late GoogleMapController _controller;

  void _onMapCreated(GoogleMapController controller) {
  _controller = controller;
  _controller.animateCamera(
    CameraUpdate.newLatLng(const LatLng(51.08, 71.26)),
  );
}


  @override
  Widget build(BuildContext context) {
    final baseTop = MediaQuery.of(context).size.height * 0.6;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundImage(
            mapWidget: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: const CameraPosition(
                target: LatLng(48.814716, 2.349014),
                zoom: 12.0,
              ),
            ),
          ),
          const TopSection(),
          GestureDetector(
            onPanUpdate: (DragUpdateDetails details) {
              final double scrollPos = details.globalPosition.dy;
              if (scrollPos < baseTop && scrollPos > searchBarHeight) {
                setState(() {
                  top = scrollPos;
                });
              }
            },
            child: DraggableSection(
              top: top == 0.0 ? baseTop : top,
              searchBarHeight: searchBarHeight,
            ),
          ),
        ],
      ),
    );
  }
}
