import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ssu_map_test/options/firebase_options.dart';
import 'package:ssu_map_test/onboarding/view/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // 폰트 고쳐야 됨
        fontFamily: 'Pretendard',
      ),
      home: SplashScreen(),
    ),
  );
}