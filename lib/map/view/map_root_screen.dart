import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:ssu_map_test/map/view/location_permission_screen.dart';
import 'package:ssu_map_test/map/view/map_screen.dart';
import '../const/fakeData.dart';
import '../utils/permission.dart';

class MapRootScreen extends StatefulWidget {
  const MapRootScreen({Key? key}) : super(key: key);
  @override
  State<MapRootScreen> createState() => _MapRootScreenState();
}

class _MapRootScreenState extends State<MapRootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<String>(
        future: checkPermission(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return _LoadingStateScreen();
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            if (snapshot.data == '위치 권한이 허가되었습니다.') {
              return MapScreen(data: fakeData);
            } else {
              return LocationPermissionScreen();
            }
          } else {
            return const Center(child: Text('Error: 원인을 알 수 없습니다.'));
          }
        },
      ),
    );
  }
}

class _LoadingStateScreen extends StatelessWidget {
  const _LoadingStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.discreteCircle(
        color: Colors.white,
        size: 64,
        secondRingColor: Colors.black,
        thirdRingColor: const Color(0xff009ACA),
      ),
    );
  }
}