import 'package:flutter/material.dart';
import '../../map/view/map_root_screen.dart';
import '../../user/view/favorite_screen.dart';
import '../../user/view/my_screen.dart';
import '../../noti/view/notice_screen.dart';

class RootTab extends StatefulWidget {
  const RootTab({Key? key}) : super(key: key);

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> with SingleTickerProviderStateMixin {
  late TabController controller;

  int index = 2;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this, initialIndex: 2);
    controller.addListener(tabListener);
  }

  @override
  void dispose() {
    controller.removeListener(tabListener);
    super.dispose();
  }

  void tabListener() {
    setState(() {
      index = controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children: [
            FavoriteScreen(),
            MyScreen(),
            MapRootScreen(),
            NoticeScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          controller.animateTo(index);
        },
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.star), label: '즐겨찾기'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'MY'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add), label: '알림'),
        ],
      ),
    );
  }
}
