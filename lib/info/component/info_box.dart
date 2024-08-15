import 'package:flutter/material.dart';
import 'package:ssu_map_test/info/utils/selectInfo.dart';
import 'package:ssu_map_test/map/model/study_space_model.dart';

import '../const/data.dart';

class InfoBox extends StatelessWidget {
  final StudySpaceModel data;
  const InfoBox({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
      child: Container(
        height: 163,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.5),
          color: Colors.white,
        ),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            final String info;
            info = selectInfo(index, data);
            return _InfoBlock(index: index, info: info);
          },
          separatorBuilder: (BuildContext context, int index) {
            return renderLine();
          },
        ),
      ),
    );
  }

  Widget renderLine() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 1,
            color: Colors.white,
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            height: 1,
            color: Color(0xffB9B9BB),
          ),
        ),
      ],
    );
  }
}

class _InfoBlock extends StatelessWidget {
  final int index;
  final String info;
  const _InfoBlock({required this.index, required this.info, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Icon(Icons.circle, color: infoColor[index]),
              ),
              Text(
                infoName[index],
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 32.0),
                child: Text(
                  info,
                  style: TextStyle(
                      color: Color(0xff8A8A8E),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
