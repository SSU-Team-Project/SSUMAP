import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:ssumap/options/firebase_options.dart';
import 'package:ssumap/onboarding/view/splash_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ssumap/noti/models/get_noti.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  for (int i = 0; i < 10; i++) {
    await _firestore.collection("read_test").doc()
        .set(Test(id: i, rank: i + 1, name: "Tyger $i").toJson());
  }

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
