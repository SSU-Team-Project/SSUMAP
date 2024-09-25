import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:ssumap/common/layout/default_layout.dart';
import 'package:ssumap/onboarding/view/login_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  // 로그아웃
  void signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '설정',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 6.0,
            color: Colors.grey.shade100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top:12.0,),
            child: FutureBuilder<String?>(
                future: _getUserName(),
                builder: (context, snapshot) {
                  final idTextStyle = TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600);
                  if (snapshot.data == ConnectionState.waiting) {
                    return const Skeletonizer(
                      child: SizedBox(
                        width: 100,
                        height: 25,
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return const Text('에러 발생');
                  } else if (!snapshot.hasData || snapshot.data == null) {
                    return const Text('구글 계정 이름이 존재하지않습니다.');
                  } else {
                    return Text('${snapshot.data}님', style: idTextStyle);
                  }
                }),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    signOut(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    elevation: 0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        textAlign: TextAlign.left,
                        '로그아웃',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<String?> _getUserName() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      return user.displayName;
    }
    return null;
  }
}
