import 'package:ssumap/info/model/info_base_model.dart';

class InfoDetailModel extends InfoBaseModel {
  final String info;
  InfoDetailModel({
    required this.info,
    required super.title,
    required super.images,
    super.studySpot = 0,
    super.playSpot = 0,
    super.isAirCon = false,
    super.isElectric = false,
  });
}
