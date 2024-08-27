import 'package:flutter/material.dart' hide Title;
import 'package:ssu_map_test/info/component/useful_info_box.dart';
import 'package:ssu_map_test/info/component/info_image.dart';
import 'package:ssu_map_test/info/model/info_detail_model.dart';
import '../../common/layout/default_layout.dart';
import '../component/info_box.dart';
import '../component/sub_title.dart';
import '../component/title.dart';

class InfoDetailScreen extends StatelessWidget {
  final InfoDetailModel data;

  const InfoDetailScreen({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultLayout(
        backgroundColor: Color(0xffF2F2F4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              SizedBox(height: 16.0),
              Title(title: '진리관-1층'),
              SizedBox(height: 8.0),
              SubTitle(subTitle: '사진'),
              InfoImage(data: data),
              SubTitle(subTitle: '정보'),
              InfoBox(data: data),
              SubTitle(subTitle: '유용한 정보'),
              UsefulInfoBox(data: data),
            ],
          ),
        ),
      ),
    );
  }
}
