import 'package:flutter/material.dart';

import '../../common/layout/default_layout.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: SizedBox(
        height: 520,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/image/coming_soon.png',
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
      title: '즐겨찾기',
    );
  }
}
