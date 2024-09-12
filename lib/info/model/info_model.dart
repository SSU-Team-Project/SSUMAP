import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ssumap/info/model/info_base_model.dart';
import 'package:ssumap/info/model/info_detail_model.dart';

class InfoModel extends InfoBaseModel {
  String markerId;
  String iconImage;
  LatLng position;
  List<int> stair;
  List<InfoDetailModel> detailList;
  InfoModel({
    required this.markerId,
    required this.iconImage,
    required this.position,
    required this.stair,
    required this.detailList,
    required super.title,
    required super.images,
    super.studySpot = 0,
    super.playSpot = 0,
    super.isAirCon = false,
    super.isElectric = false,
  });
}
