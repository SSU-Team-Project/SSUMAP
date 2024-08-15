import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ssu_map_test/map/model/study_space_model.dart';

List<StudySpaceModel> fakeData = [
  StudySpaceModel(
    markerId: 'library',
    iconImage: 'asset/icon/marker/library.png',
    position: LatLng(37.496243, 126.958619),
    title: '중앙도서관',
    images: [
      'https://picsum.photos/id/228/1800/1200',
      'https://picsum.photos/id/229/1800/1200',
      'https://picsum.photos/id/230/1800/1200',
      'https://picsum.photos/id/236/1800/1200',
      'https://picsum.photos/id/240/1800/1200',
      'https://picsum.photos/id/244/1800/1200',
    ],
    stair: [1, 2, 3, 4, 5, 6],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
  ),
  StudySpaceModel(
    markerId: 'vertias_hall',
    iconImage: 'asset/icon/marker/vertias_hall.png',
    position: LatLng(37.496896, 126.957533),
    title: '진리관',
    images: [
      'https://picsum.photos/id/223/1800/1200',
      'https://picsum.photos/id/228/1800/1200',
      'https://picsum.photos/id/229/1800/1200',
      'https://picsum.photos/id/260/1800/1200'
    ],
    stair: [1, 2, 3, 4],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
  ),
  StudySpaceModel(
    markerId: 'baird_hall',
    iconImage: 'asset/icon/marker/baird_hall.png',
    position: LatLng(37.496488, 126.95633),
    title: '베어드홀',
    images: [
      'https://picsum.photos/id/223/1800/1200',
      'https://picsum.photos/id/228/1800/1200',
      'https://picsum.photos/id/229/1800/1200',
      'https://picsum.photos/id/260/1800/1200'
    ],
    stair: [1, 2, 3, 4],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
  ),
];
