import 'package:flutter/material.dart';
import 'package:ssu_map_test/common/view/root_tab.dart';
import 'package:ssu_map_test/user/view/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Pretendard',
      ),
      home: SplashScreen(),
    ),
  );
}