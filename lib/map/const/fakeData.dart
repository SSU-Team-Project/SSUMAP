import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ssu_map_test/info/model/info_detail_model.dart';
import '../../info/model/info_model.dart';

// 위젯 로드용 가짜 데이터
List<InfoModel> fakeData = [
  InfoModel(
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
    detailList: List.generate(
      6,
      (index) => InfoDetailModel(
        info: '중앙도서관 ${index + 1}층',
        title: '중앙도서관 - ${index + 1}층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800',
        ],
      ),
    ).toList(),
  ),
  InfoModel(
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
    detailList: [
      InfoDetailModel(
        info: 'bar 형태의 공부 공간이 있다.',
        title: '진리관 - 1층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
      InfoDetailModel(
        info: 'bar 형태의 공부 공간이 있다.',
        title: '진리관 - 2층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
      InfoDetailModel(
        info: 'bar 형태의 공부 공간이 있다.',
        title: '진리관 - 3층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
    ],
  ),
  InfoModel(
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
    detailList: [
      InfoDetailModel(
        info: '화장실이 깨끗하다.',
        title: '베어드홀 - 1층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
      InfoDetailModel(
        info: 'bar 형태의 공부 공간이 있다.',
        title: '베어드홀 - 2층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
      InfoDetailModel(
        info: '매점이 있다.',
        title: '베어드홀 - 3층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
    ],
  ),
];
