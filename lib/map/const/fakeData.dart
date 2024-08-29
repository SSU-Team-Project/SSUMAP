/*
 * Created by heinz on 2024. 8. 26.
 * Updated by heinz on 2024. 8. 29. 22:35
 */

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
    stair: [3],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '123',
        title: '숭덕경상관 - 3층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F02%2F0.webp?alt=media&token=09eb3dce-e4b6-4f86-b260-322f800987dd'
        ],
      ),
    ],
  ),
  // 03 문화관 ✅
  InfoModel(
    markerId: 'cultural_hall',
    iconImage: 'asset/icon/marker/baird_hall.png',
    position: LatLng(37.4965817, 126.9542759),
    title: '문화관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F03%2F0.webp?alt=media&token=c110b1f6-4b5b-4215-8d46-39cf5a8e0b62',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F03%2F1.webp?alt=media&token=b40cea71-7726-4b65-8e75-d007fd60615f',
    ],
    stair: [3, 5],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '가볍게 앉아서 휴식하기 좋다.',
        title: '문화관 - 3층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F03%2F0.webp?alt=media&token=c110b1f6-4b5b-4215-8d46-39cf5a8e0b62'
        ],
      ),
      InfoDetailModel(
        info: '가볍게 앉아서 휴식하기 좋다.',
        title: '문화관 - 5층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F03%2F1.webp?alt=media&token=b40cea71-7726-4b65-8e75-d007fd60615f'
        ],
      ),
    ],
  ),
  // 04 안익태기념관 ✅
  InfoModel(
    markerId: 'ahn_ik_tae_hall',
    iconImage: 'asset/icon/marker/baird_hall.png',
    position: LatLng(37.4957097, 126.9550571),
    title: '안익태기념관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F04%2F0.webp?alt=media&token=9f45bf00-23d8-4ef9-88d0-17c57462e1db'
    ],
    stair: [1],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '창가에 앉아 혼자 공부하기 좋은 공간이다.',
        title: '안익태기념관 - 1층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F04%2F0.webp?alt=media&token=9f45bf00-23d8-4ef9-88d0-17c57462e1db'
        ],
      )
    ],
  ),
  // 05 형남공학관 ✅
  InfoModel(
    markerId: 'engineering_hall',
    iconImage: 'asset/icon/marker/baird_hall.png',
    position: LatLng(37.4957479, 126.9561148),
    title: '형남공학관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F05%2F0.webp?alt=media&token=058b9a5d-9ab0-4546-94d9-1c8f963a1f78',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F05%2F2.webp?alt=media&token=a558b11d-e763-4630-bb14-73bb952f6723',
    ],
    stair: [2, 5],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '넓은 계단형식의 좌석이 특징적이고, 팀플을 진행하기 좋다.',
        title: '형남공학관 - 2층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F05%2F0.webp?alt=media&token=058b9a5d-9ab0-4546-94d9-1c8f963a1f78',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F05%2F1.webp?alt=media&token=7b8bb630-d21a-4a9d-a7ea-499ef4775103'
        ],
      ),
      InfoDetailModel(
        info: '넓은 계단형식의 좌석이 특징적이고, 팀플을 진행하기 좋다.',
        title: '형남공학관 - 5층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F05%2F2.webp?alt=media&token=a558b11d-e763-4630-bb14-73bb952f6723'
        ],
      ),
    ],
  ),
  // 10 벤처중소기업센터 ✅
  InfoModel(
    markerId: 'venture_center',
    iconImage: 'asset/icon/marker/baird_hall.png',
    position: LatLng(37.4975166, 126.9574873),
    title: '벤처중소기업센터',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F10%2F0.webp?alt=media&token=05ecd50f-d269-4776-8986-7692073ad14d',
    ],
    stair: [2],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '2층 시설을 예약하여 사용하기 좋다.',
        title: '벤처중소기업센터 - 2층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F10%2F0.webp?alt=media&token=05ecd50f-d269-4776-8986-7692073ad14d',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F10%2F1.webp?alt=media&token=91a56fee-1c75-49b2-96fc-40e35ee2ba86'
        ],
      ),
    ],
  ),
  // 11 진리관 ✅
  InfoModel(
    markerId: 'vertias_hall',
    iconImage: 'asset/icon/marker/vertias_hall.png',
    position: LatLng(37.4968207, 126.9577235),
    title: '진리관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F11%2F2.webp?alt=media&token=e2f2763b-91cd-46b7-9fbf-1fb3c2595ae8',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F11%2F0.webp?alt=media&token=40805856-180a-4e41-8944-09deda1979ea'
    ],
    stair: [0, 1],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '층마다 다양한 좌석이 있고 공부할 공간이 많다.',
        title: '진리관 - 0층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F11%2F2.webp?alt=media&token=e2f2763b-91cd-46b7-9fbf-1fb3c2595ae8'
        ],
      ),
      InfoDetailModel(
        info: '층마다 다양한 좌석이 있고 공부할 공간이 많다.',
        title: '진리관 - 1층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F11%2F0.webp?alt=media&token=40805856-180a-4e41-8944-09deda1979ea',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F11%2F1.webp?alt=media&token=6cd1edf3-eb34-45fe-a46a-7ee0c9504300'
        ],
      ),
    ],
  ),
  // 12 조만식기념관 ✅
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
    stair: [1, 2, 3, 7],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '카페와 숭실포레스트가 있다.',
        title: '조만식기념관 - 1층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F12%2F4.webp?alt=media&token=996c8b72-4841-4d93-bdaa-dc663a5ece5a',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F12%2F0.webp?alt=media&token=a108da4e-59e2-4b8b-b82d-ba691880ddb5',
        ],
      ),
      InfoDetailModel(
        info: '층별로 다양한 좌석이 많다.',
        title: '조만식기념관 - 2층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F12%2F1.webp?alt=media&token=3ae6bdab-7d4e-4636-849d-b2196bb99f1c',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F12%2F3.webp?alt=media&token=b8d15d89-7b28-4206-a9f6-0d6e471f9aa8'
        ],
      ),
      InfoDetailModel(
        info: '층별로 다양한 좌석이 많다.',
        title: '조만식기념관 - 3층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F12%2F2.webp?alt=media&token=10cb70ce-ae27-46ed-a51f-90cfd56f0a24'
        ],
      ),
      InfoDetailModel(
        info: '층별로 다양한 좌석이 많다.',
        title: '조만식기념관 - 7층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F12%2F5.webp?alt=media&token=89ffff04-1eb4-4121-83d1-2db8708e0357'
        ],
      ),
    ],
  ),
  // 14 중앙도서관 ⚠️
  InfoModel(
    markerId: 'library',
    iconImage: 'asset/icon/marker/library.png',
    position: LatLng(37.496243, 126.958619),
    title: '중앙도서관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F2.webp?alt=media&token=1945a110-6a00-4d81-8094-bcb7e0e81a9e',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F8.webp?alt=media&token=10316b18-2088-4102-8c60-272a6404a384',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F3.webp?alt=media&token=dcc73832-877e-4942-94ed-55c7c2928db7',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F10.webp?alt=media&token=ed7767db-fa5b-4d27-8e33-615d10ec0131',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F11.webp?alt=media&token=12080deb-f651-4eb5-86c7-397b4a324c9c',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F5.webp?alt=media&token=2744ef1c-1ff8-45ad-9113-914caf532126',
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
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F0.webp?alt=media&token=102487b9-b9ad-4a7e-b1b7-66edb9317aaf',
          // 'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F1.webp?alt=media&token=b39e8dd3-5c2f-48b1-bffd-939a317915ea',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F2.webp?alt=media&token=1945a110-6a00-4d81-8094-bcb7e0e81a9e'
        ],
      ),
      InfoDetailModel(
        info: '숭실스퀘어에서 데스크탑을 사용할 수 있다.',
        title: '중앙도서관 - 2층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F8.webp?alt=media&token=10316b18-2088-4102-8c60-272a6404a384'
        ],
      ),
      InfoDetailModel(
        info: '자유롭게 이야기를 나눌 수 있는 공간이 있다.',
        title: '중앙도서관 - 3층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F3.webp?alt=media&token=dcc73832-877e-4942-94ed-55c7c2928db7'
        ],
      ),
      InfoDetailModel(
        info: '책을 읽으면서 공부하기 좋다.',
        title: '중앙도서관 - 4층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F9.webp?alt=media&token=5c673677-c8e5-42ca-98e6-d33285951e23',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F10.webp?alt=media&token=ed7767db-fa5b-4d27-8e33-615d10ec0131'
        ],
      ),
      InfoDetailModel(
        info: '미디어 자료를 활용할 수 있는 공간이 있다.',
        title: '중앙도서관 - 5층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F11.webp?alt=media&token=12080deb-f651-4eb5-86c7-397b4a324c9c',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F12.webp?alt=media&token=96bedb6f-327e-4914-96d2-748733653a34'
        ],
      ),
      InfoDetailModel(
        info: '숭실마루 카페에서 편하게 공부하기 좋다.',
        title: '중앙도서관 - 6층',
        images: [
          // 'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F4.webp?alt=media&token=eef0bab0-9847-4375-8f49-dfe6300066a9',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F5.webp?alt=media&token=2744ef1c-1ff8-45ad-9113-914caf532126',
          // 'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F6.webp?alt=media&token=f17d0a0a-61ba-4df7-ac0f-b07b9561d9fe',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F14%2F7.webp?alt=media&token=bdcb32cb-24c3-4f48-a4b5-660334faf2bd'
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
  // 19 전산관 ✅
  InfoModel(
    markerId: 'computing_hall',
    iconImage: 'asset/icon/marker/vertias_hall.png',
    position: LatLng(37.4954321, 126.9596122),
    title: '전산관',
    images: [
        'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F19%2F0.webp?alt=media&token=a44915ba-941c-4b8d-bf06-9aa91acc8289',
        'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F19%2F2.webp?alt=media&token=e6861644-f606-43c9-b491-3c8a63f0b363'
      ],
    stair: [1, -1],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '혼자 테이블에 앉아 공부하기 좋다.',
        title: '전산관 - 1층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F19%2F0.webp?alt=media&token=a44915ba-941c-4b8d-bf06-9aa91acc8289',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F19%2F1.webp?alt=media&token=9f1c5ac0-54f3-46dc-b8a1-5483916dc7f2'
        ],
      ),
      InfoDetailModel(
        info: 'bar 형태의 공부 공간이 있다.',
        title: '전산관 - 교수 식당',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F19%2F2.webp?alt=media&token=e6861644-f606-43c9-b491-3c8a63f0b363'
        ],
      ),
    ],
  ),
  // 20 미래관 ✅
  InfoModel(
    markerId: 'future_hall',
    iconImage: 'asset/icon/marker/vertias_hall.png',
    position: LatLng(37.4956025, 126.9584825),
    title: '미래관',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F20%2F0.webp?alt=media&token=6b020a82-334d-49c5-a69b-66c13493a811',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F20%2F1.webp?alt=media&token=89f6bd59-3bc2-4d42-9862-5864ac4dd77c',
    ],
    stair: [1, 3],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '다양한 좌석에서 편하게 공부할 수 있다.',
        title: '미래관 - 1층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F20%2F0.webp?alt=media&token=6b020a82-334d-49c5-a69b-66c13493a811'
        ],
      ),
      InfoDetailModel(
        info: '다양한 좌석에서 편하게 공부할 수 있다.',
        title: '미래관 - 3층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F20%2F1.webp?alt=media&token=89f6bd59-3bc2-4d42-9862-5864ac4dd77c'
        ],
      ),
    ],
  ),
  // 22 웨스트민스터홀 ✅
  InfoModel(
    markerId: 'westminster_hall',
    iconImage: 'asset/icon/marker/vertias_hall.png',
    position: LatLng(37.4967694, 126.958415),
    title: '웨스트민스터홀',
    images: [
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F22%2F0.webp?alt=media&token=8278bcae-21f3-420f-be79-a6fcd4d4d5de',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F22%2F0.webp?alt=media&token=8278bcae-21f3-420f-be79-a6fcd4d4d5de',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F22%2F1.webp?alt=media&token=ee752872-2940-4c18-97fe-baa8e484b273'
    ],
    stair: [0, 1, 4],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '카페가 있고 편하게 대화할 수 있는 공간이 있다.',
        title: '웨스트민스터홀 - 0층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F22%2F0.webp?alt=media&token=8278bcae-21f3-420f-be79-a6fcd4d4d5de'
        ],
      ),
      InfoDetailModel(
        info: '카페가 있고 편하게 대화할 수 있는 공간이 있다.',
        title: '웨스트민스터홀 - 1층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F22%2F0.webp?alt=media&token=8278bcae-21f3-420f-be79-a6fcd4d4d5de',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F22%2F2.webp?alt=media&token=b345c513-1583-4c35-a2f0-52c08531371d',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F22%2F3.webp?alt=media&token=b84f2f98-6b61-4b55-81e8-81b305cb35a4',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F22%2F4.webp?alt=media&token=6c7527d5-1c00-4e6e-b693-aa7937b20904'
        ],
      ),
      InfoDetailModel(
        info: '카페가 있고 편하게 대화할 수 있는 공간이 있다.',
        title: '웨스트민스터홀 - 4층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F22%2F1.webp?alt=media&token=ee752872-2940-4c18-97fe-baa8e484b273'
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
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F23%2F2.webp?alt=media&token=737d0e81-3b99-4f30-bc37-9951fe80d275',
      'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F23%2F0.webp?alt=media&token=5983d28b-b423-4225-a14c-a11d39041175'
    ],
    stair: [1, 5],
    studySpot: 3,
    playSpot: 4,
    isAirCon: true,
    isElectric: true,
    detailList: [
      InfoDetailModel(
        info: '이외에도 곳곳에 휴식할 공간과 자판기가 많다.',
        title: '학생회관 - 1층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F23%2F2.webp?alt=media&token=737d0e81-3b99-4f30-bc37-9951fe80d275'
        ],
      ),
      InfoDetailModel(
        info: '이외에도 곳곳에 휴식할 공간과 자판기가 많다.',
        title: '학생회관 - 5층',
        images: [
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F23%2F0.webp?alt=media&token=5983d28b-b423-4225-a14c-a11d39041175',
          'https://firebasestorage.googleapis.com/v0/b/it-project-5e334.appspot.com/o/places%2F23%2F1.webp?alt=media&token=f4481a64-6ca5-46fe-9cbb-b6373ec71091'
        ],
      ),
    ],
  ),
];