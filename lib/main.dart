import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ssu_map_test/options/firebase_options.dart';
import 'package:ssu_map_test/user/view/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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