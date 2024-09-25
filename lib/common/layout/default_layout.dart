import 'package:flutter/material.dart';
import 'package:ssumap/onboarding/view/setting_screen.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final String? title;
  final Widget? bottomNavigationBar;

  const DefaultLayout({
    required this.child,
    this.backgroundColor,
    this.title,
    this.bottomNavigationBar,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      body: Column(
        children: [
          renderAppbar(context),
          child,
        ],
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget renderAppbar(BuildContext context) {
    if (title == null) {
      return Container();
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 64.0, left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.start,
                ),
                if (title == 'MY')
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(_createRoute());
                    },
                    icon: Icon(Icons.menu, size: 32.0),
                  ),
              ],
            ),
          ],
        ),
      );
    }
  }

  // 새로운 화면으로 전환할 때의 애니메이션을 정의하는 함수
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SettingScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // 오른쪽에서 시작
        const end = Offset.zero; // 중앙으로 이동
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
