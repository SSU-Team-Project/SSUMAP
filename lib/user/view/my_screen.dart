import 'package:flutter/material.dart';

import '../../common/layout/default_layout.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
                // TODO : 캐릭터 보여주기
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 16),
                // 수정 FAB
                FloatingActionButton.extended(
                  onPressed: () {
                    // TODO : onPressed : 상점으로
                  },
                  label: const Text('수정'),
                  icon: const Icon(Icons.checkroom),
                ),
              ],
            ),
          ],
        ),
      ),
      title: 'MY',
    );
  }
}
