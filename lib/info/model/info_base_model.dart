class InfoBaseModel {
  String title;
  List<String> images;
  int? studySpot;
  int? playSpot;
  bool? isAirCon;
  bool? isElectric;

  InfoBaseModel({
    required this.title,
    required this.images,
    required this.studySpot,
    required this.playSpot,
    required this.isAirCon,
    required this.isElectric,
  });
}
