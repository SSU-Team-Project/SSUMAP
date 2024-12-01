import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ssumap/options/firebase_options.dart';
import 'package:ssumap/onboarding/view/splash_screen.dart';

const characterBox = 'characterBox';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(characterBox);

  // 어플 첫 실행 시 캐릭터 첫번째로 설정
  final box = Hive.box(characterBox);
  if (box.isEmpty) {
    box.put('index', 1);
  }
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  String? _fcmToken = await FirebaseMessaging.instance.getToken();

  if (_fcmToken != null) {
    await saveTokenToFirestore(_fcmToken);
  }

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

Future<void> saveTokenToFirestore(String token) async {
  // Firestore에 토큰과 타임스탬프 저장
  final deviceToken = {
    'token': token,
    'timestamp': FieldValue.serverTimestamp(),
  };

  // 사용자 ID를 Firebase Auth 또는 다른 방법으로 가져옴
  String userId = 'myuserid'; // 실제 사용자 ID로 변경 필요

  await FirebaseFirestore.instance
      .collection('fcmTokens')
      .doc(userId)
      .set(deviceToken);
}
