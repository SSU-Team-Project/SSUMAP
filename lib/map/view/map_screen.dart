import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ssu_map_test/info/view/info_screen.dart';
import 'package:ssu_map_test/info/view/preview_screen.dart';
import 'package:ssu_map_test/map/component/custom_draggable_sheet.dart';
import 'package:ssu_map_test/map/const/data.dart';
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

  Future<void> _loadMarkerTitles() async {
    for (var space in fakeData) {
      titles.add(space.title);
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadMarkerTitles();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: initialPosition,
      markers: _createMarkers(context, widget.data),
      mapToolbarEnabled: false,
    );
  }

  // 마커 생성
  Set<Marker> _createMarkers(BuildContext context, List<InfoModel> data) {
    if (titles.isEmpty) {
      return {};
    }

    return data.mapIndexed((index, e) {
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
    }).toSet();
  }
}