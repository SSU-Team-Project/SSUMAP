import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ssumap/info/view/info_screen.dart';
import 'package:ssumap/info/view/preview_screen.dart';
import 'package:ssumap/map/component/custom_draggable_sheet.dart';
import 'package:ssumap/map/const/data.dart';
import 'package:ssumap/map/view/map_root_screen.dart';
import '../../info/model/info_model.dart';
import '../const/fakeData.dart';
import 'package:collection/collection.dart';

class MapScreen extends StatefulWidget {
  final List<InfoModel> data;

  const MapScreen({required this.data, Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<String> titles = [];
  late GoogleMapController _mapController;
  LatLng? _currentPosition;

  // 숭실대학교 백마상 좌표
  final LatLng _initialPosition = LatLng(37.496308, 126.957440);

  Future<void> _loadMarkerTitles() async {
    for (var space in fakeData) {
      titles.add(space.title);
    }
    setState(() {});
  }

  // 거리 계산: 두 위치 사이의 거리를 계산
  double _calculateDistance(LatLng start, LatLng end) {
    return Geolocator.distanceBetween(
        start.latitude, start.longitude,
        end.latitude, end.longitude
    );
  }

  @override
  void initState() {
    super.initState();
    _loadMarkerTitles();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: initialPosition,
            markers: _createMarkers(context, widget.data),
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            mapToolbarEnabled: false,
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
            },
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: FloatingActionButton(
              onPressed: () {
                _getCurrentLocation();
              },
              backgroundColor: Colors.white.withOpacity(0.8),
              child: const Icon(Icons.my_location_outlined, color: Color(0xff666666)),
            ),
          ),
        ],
      ),
    );
  }

  // 마커 생성
  Set<Marker> _createMarkers(BuildContext context, List<InfoModel> data) {
    Set<Marker> markers = {};

    if (titles.isNotEmpty) {
      markers.addAll(data.mapIndexed((index, e) {
        return Marker(
          markerId: MarkerId(e.markerId),
          position: e.position,
          infoWindow: InfoWindow(title: titles[index]),
          onTap: () {
            // 바텀 시트 생성
            showModalBottomSheet(
              backgroundColor: Color(0XFFF2F2F2),
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              builder: (_) {
                return CustomDraggableSheet(
                    preview: PreviewScreen(
                      data: e,
                      title: e.title,
                    ),
                    view: InfoScreen(data: e, title: e.title));
              },
            );
          },
        );
      }));
    }

    if (_currentPosition != null) {
      markers.add(Marker(
        markerId: MarkerId("current_location"),
        position: _currentPosition!,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        infoWindow: InfoWindow(title: "현재 위치"),
      ));
    }

    return markers;
  }

  // 현재 위치 가져오기
  Future<void> _getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.whileInUse || permission == LocationPermission.always) {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      LatLng newPosition = LatLng(position.latitude, position.longitude);

      double distance = _calculateDistance(_initialPosition, newPosition);

      if (distance <= allowedRadius) {
        _currentPosition = newPosition;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('숭실대 10km 반경 밖입니다.'), duration: Duration(seconds: 1)),
        );
      }

      _mapController.animateCamera(
        CameraUpdate.newLatLngZoom(
          _currentPosition ?? _initialPosition,
          16.0, // 줌 레벨
        ),
      );

      setState(() {});
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => MapRootScreen()),
      );
    }
  }

}
