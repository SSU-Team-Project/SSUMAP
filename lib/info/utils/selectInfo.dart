import '../model/info_base_model.dart';

String selectInfo(int index, InfoBaseModel data){
  if (index == 0) {
    return "${data.studySpot!} / 5";
  } else if (index == 1) {
    return"${data.playSpot!} / 5";
  } else if (index == 2) {
    return data.isAirCon! ? "있음" : "없음";
  } else if (index == 3) {
    return data.isElectric! ? "있음" : "없음";
  } else {
    return "";
  }
}