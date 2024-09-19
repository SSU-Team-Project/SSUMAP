import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:ssumap/options/firebase_options.dart';
import 'package:ssumap/onboarding/view/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  String? _fcmToken = await FirebaseMessaging.instance.getToken();
  print('TOKEN: $_fcmToken');

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
