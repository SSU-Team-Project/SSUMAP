import 'package:flutter/material.dart' hide Title;

import '../component/info_box.dart';
import '../component/info_image_grid.dart';
import '../component/sub_title.dart';
import '../component/title.dart';

class InfoDetailScreen extends StatelessWidget {
  const InfoDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Title(title: '진리관-1층'),
          SizedBox(height: 8.0),
          SubTitle(subTitle: '사진'),
          SubTitle(subTitle: '유용한 정보'),
        ],
      ),
    );
  }
}
