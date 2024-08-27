import 'package:flutter/material.dart';
import 'package:ssu_map_test/common/layout/default_layout.dart';
import 'package:ssu_map_test/map/view/map_root_screen.dart';

class LocationPermissionScreen extends StatefulWidget {
  const LocationPermissionScreen({super.key});

  @override
  State<LocationPermissionScreen> createState() =>
      _LocationPermissionScreenState();
}

class _LocationPermissionScreenState extends State<LocationPermissionScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultLayout(
      backgroundColor: Color(0xff181E28),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: const Text(
                  'SSUMAP',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(height: height * 0.1),
            Image.asset('asset/logo/permission_logo.png'),
            const SizedBox(height: 16.0),
            const Text(
              '위치권한이 허용되지 않았어요!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '슈맵을 이용하려면\n위치권한 설정이 필요해요!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffBABABA),
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '설정 > 앱 > 앱권한 > 허용',
              style: TextStyle(color: Color(0xff848484), fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                renderLocationIcon(
                    filledColor: Color(0xff525252),
                    iconColor: Color(0xffD9D9D9)),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xff329DFF),
                  size: 64.0,
                ),
                renderLocationIcon(
                    filledColor: Color(0xffEFEFEF),
                    iconColor: Color(0xff363636)),
              ],
            ),
            SizedBox(height: height * 0.05),
            SizedBox(
              width: width * 0.25,
              height: 32.0,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (_) => MapRootScreen()),
                        (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0085FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(
                    '확인',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget renderLocationIcon(
      {required Color filledColor, required Color iconColor}) {
    return Container(
      width: 64.0,
      height: 64.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: filledColor,
      ),
      child: Icon(
        Icons.location_on_sharp,
        color: iconColor,
        size: 44.0,
      ),
    );
  }
}
