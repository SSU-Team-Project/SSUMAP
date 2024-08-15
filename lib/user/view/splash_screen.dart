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

  void checkToken() async{
    await Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => RootTab()), (route)=>false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0XFF60C1C2),
          Color(0xff38829B),
          Color(0xff38829B)
        ])),
      ),
      Positioned(
        right: 0,
        left: 0,
        bottom: 32,
        child: Image.asset("asset/logo/main_logo.png"),
      ),
    ]);
  }
}
