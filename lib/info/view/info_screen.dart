import 'package:flutter/material.dart' hide Title;
import 'package:ssu_map_test/info/component/info_image_grid.dart';
import 'package:ssu_map_test/info/component/title.dart';
import 'package:ssu_map_test/map/model/study_space_model.dart';

import '../component/info_box.dart';
import '../component/sub_title.dart';

class InfoScreen extends StatelessWidget {
  final StudySpaceModel data;
  final String title;
  const InfoScreen({required this.data, required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
            children: [
              Title(title: title),
              SizedBox(height: 8.0),
              SubTitle(subTitle: '사진'),
              InfoImageGrid(images: data.images, stair: data.stair),
              SubTitle(subTitle: '유용한 정보'),
              InfoBox(data: data),
            ],
          ),
    );
  }
}

