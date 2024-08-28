import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ssu_map_test/info/model/info_detail_model.dart';
import '../../info/model/info_model.dart';

// 위젯 로드용 가짜 데이터
List<InfoModel> fakeData = [
  // 01 베어드홀
  InfoModel(
    markerId: 'baird_hall',
    iconImage: 'asset/icon/marker/baird_hall.png',
    position: LatLng(37.4964596, 126.956307),
    title: '베어드홀',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F01%2F0.webp?alt=media&token=a173763d-7723-4fda-a9b4-1bbb0a67a0fe',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F01%2F1.webp?alt=media&token=9fbfa501-d91a-412d-95aa-a74cc6589f26',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F01%2F1.webp?alt=media&token=9fbfa501-d91a-412d-95aa-a74cc6589f26'

    ],
    stair: [1, 2, 3],
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
  // 02 숭덕경상관
  InfoModel(
    markerId: 'commerce_hall',
    iconImage: 'asset/icon/marker/baird_hall.png',
    position: LatLng(37.4964874, 126.9551682),
    title: '숭덕경상관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F02%2F0.webp?alt=media&token=09eb3dce-e4b6-4f86-b260-322f800987dd',
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
  // 03 문화관
  InfoModel(
    markerId: 'cultural_hall',
    iconImage: 'asset/icon/marker/baird_hall.png',
    position: LatLng(37.4965817, 126.9542759),
    title: '문화관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F03%2F0.webp?alt=media&token=c110b1f6-4b5b-4215-8d46-39cf5a8e0b62',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F03%2F1.webp?alt=media&token=b40cea71-7726-4b65-8e75-d007fd60615f',
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
  // 04 안익태기념관
  InfoModel(
    markerId: 'ahn_ik_tae_hall',
    iconImage: 'asset/icon/marker/baird_hall.png',
    position: LatLng(37.4957097, 126.9550571),
    title: '안익태기념관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F04%2F0.webp?alt=media&token=9f45bf00-23d8-4ef9-88d0-17c57462e1db'
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
  // 05 형남공학관
  InfoModel(
    markerId: 'engineering_hall',
    iconImage: 'asset/icon/marker/baird_hall.png',
    position: LatLng(37.4957479, 126.9561148),
    title: '형남공학관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F05%2F0.webp?alt=media&token=058b9a5d-9ab0-4546-94d9-1c8f963a1f78',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F05%2F1.webp?alt=media&token=7b8bb630-d21a-4a9d-a7ea-499ef4775103',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F05%2F2.webp?alt=media&token=a558b11d-e763-4630-bb14-73bb952f6723',
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
  // 11 진리관
  InfoModel(
    markerId: 'vertias_hall',
    iconImage: 'asset/icon/marker/vertias_hall.png',
    position: LatLng(37.4968207, 126.9577235),
    title: '진리관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F11%2F0.webp?alt=media&token=40805856-180a-4e41-8944-09deda1979ea',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F11%2F1.webp?alt=media&token=6cd1edf3-eb34-45fe-a46a-7ee0c9504300',
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
  // 12 조만식기념관
  InfoModel(
    markerId: 'jomansik_hall',
    iconImage: 'asset/icon/marker/vertias_hall.png',
    position: LatLng(37.497064, 126.957913),
    title: '조만식기념관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F12%2F0.webp?alt=media&token=a108da4e-59e2-4b8b-b82d-ba691880ddb5',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F12%2F1.webp?alt=media&token=3ae6bdab-7d4e-4636-849d-b2196bb99f1c',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F12%2F2.webp?alt=media&token=10cb70ce-ae27-46ed-a51f-90cfd56f0a24',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F12%2F3.webp?alt=media&token=b8d15d89-7b28-4206-a9f6-0d6e471f9aa8',
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
  // 14 중앙도서관 ✅
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
    detailList: [
      InfoDetailModel(
        info: '세미나실이나 좌석을 예약하여 사용할 수 있다.',
        title: '중앙도서관 - 1층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
      InfoDetailModel(
        info: '숭실스퀘어에서 데스크탑을 사용할 수 있다.',
        title: '중앙도서관 - 2층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
      InfoDetailModel(
        info: '자유롭게 이야기를 나눌 수 있는 오픈형 공간이 있다.',
        title: '중앙도서관 - 3층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
      InfoDetailModel(
        info: '책을 읽으면서 공부하기 좋다.',
        title: '중앙도서관 - 4층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
      InfoDetailModel(
        info: '미디어 자료를 활용할 수 있는 공간이 있다.',
        title: '중앙도서관 - 5층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
      InfoDetailModel(
        info: '숭실마루의 카페를 즐기며 편하게 공부하기 좋다.',
        title: '중앙도서관 - 6층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
    ],
    // List.generate(
    //   6,
    //       (index) => InfoDetailModel(
    //     info: '중앙도서관 ${index + 1}층',
    //     title: '중앙도서관 - ${index + 1}층',
    //     images: [
    //       'https://picsum.photos/id/228/1200/1800',
    //       'https://picsum.photos/id/228/1200/1800',
    //     ],
    //   ),
    // ).toList(),
  ),
  // 19 전산관
  InfoModel(
    markerId: 'vertias_hall',
    iconImage: 'asset/icon/marker/vertias_hall.png',
    position: LatLng(37.4968207, 126.9577235),
    title: '전산관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F19%2F0.webp?alt=media&token=a44915ba-941c-4b8d-bf06-9aa91acc8289',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F19%2F1.webp?alt=media&token=9f1c5ac0-54f3-46dc-b8a1-5483916dc7f2',
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
  // 20 미래관
  InfoModel(
    markerId: 'future_hall',
    iconImage: 'asset/icon/marker/vertias_hall.png',
    position: LatLng(37.4956025, 126.9584825),
    title: '미래관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F20%2F0.webp?alt=media&token=6b020a82-334d-49c5-a69b-66c13493a811',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F20%2F1.webp?alt=media&token=89f6bd59-3bc2-4d42-9862-5864ac4dd77c',
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
  // 22 웨스트민스터홀
  InfoModel(
    markerId: 'westminster_hall',
    iconImage: 'asset/icon/marker/vertias_hall.png',
    position: LatLng(37.4967694, 126.958415),
    title: '웨스트민스터홀',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F22%2F0.webp?alt=media&token=8278bcae-21f3-420f-be79-a6fcd4d4d5de',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F22%2F1.webp?alt=media&token=ee752872-2940-4c18-97fe-baa8e484b273',
    ],
    stair: [1, 2, 3, 4],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '(카페가 있음)',
        title: '웨스트민스터홀 - 1층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
      InfoDetailModel(
        info: '(2층)',
        title: '웨스트민스터홀 - 2층',
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
  // 23 학생회관
  InfoModel(
    markerId: 'student_union',
    iconImage: 'asset/icon/marker/vertias_hall.png',
    position: LatLng(37.4968261, 126.9565265),
    title: '학생회관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F23%2F0.webp?alt=media&token=5983d28b-b423-4225-a14c-a11d39041175',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F23%2F1.webp?alt=media&token=f4481a64-6ca5-46fe-9cbb-b6373ec71091',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F23%2F2.webp?alt=media&token=737d0e81-3b99-4f30-bc37-9951fe80d275',
    ],
    stair: [1, 2, 3, 4],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '(카페가 있음)',
        title: '웨스트민스터홀 - 1층',
        images: [
          'https://picsum.photos/id/228/1200/1800',
          'https://picsum.photos/id/228/1200/1800'
        ],
      ),
      InfoDetailModel(
        info: '(2층)',
        title: '웨스트민스터홀 - 2층',
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
];