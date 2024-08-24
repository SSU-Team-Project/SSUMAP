import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../common/view/root_tab.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkToken();
  }

  void checkToken() async {
    await Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => RootTab()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0XFF60C1C2),
            Color(0xff38829B),
            Color(0xff38829B),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Image.asset("asset/logo/main_logo.png")),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          LoadingAnimationWidget.horizontalRotatingDots(
            color: Colors.white,
            size: MediaQuery.of(context).size.height * 0.05,
          ),
        ],
      ),
    );
  }
}
