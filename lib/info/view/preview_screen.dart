import 'package:flutter/material.dart' hide Title;
import 'package:ssumap/info/component/spec_info_stair_list.dart';
import '../component/useful_info_box.dart';
import '../component/info_image.dart';
import '../component/sub_title.dart';
import '../component/title.dart';
import '../model/info_model.dart';

class PreviewScreen extends StatelessWidget {
  final InfoModel data;
  final String title;
  const PreviewScreen({required this.data, required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(height: 16.0),
          Title(title: title),
          SizedBox(height: 8.0),
          SubTitle(subTitle: '층별안내'),
          if(data.stair.length>4) // 도서관 같이 층수가 많을 때
            SpecInfoStairList(data: data),
          if(data.stair.length<=4) // 층수가 4개 이하일 때
            InfoImage(data: data),
          SubTitle(subTitle: '유용한 정보'),
          UsefulInfoBox(data: data),
        ],
      ),
    );
  }
}
