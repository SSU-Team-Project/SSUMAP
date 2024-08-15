import 'package:google_maps_flutter/google_maps_flutter.dart';

class StudySpaceModel {
  String markerId;
  String iconImage;
  LatLng position;
  String title;
  List<String> images;
  List<int> stair;
  int? studySpot;
  int? playSpot;
  bool? isAirCon;
  bool? isElectric;

  StudySpaceModel({
    required this.markerId,
    required this.iconImage,
    required this.position,
    required this.title,
    required this.images,
    required this.stair,
    this.studySpot = 0,
    this.playSpot = 0,
    this.isAirCon = false,
    this.isElectric = false,
  });
}
