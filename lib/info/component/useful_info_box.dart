import 'package:flutter/material.dart';
import 'package:ssu_map_test/info/const/style.dart';
import 'package:ssu_map_test/info/utils/selectInfo.dart';
import '../const/data.dart';
import '../model/info_base_model.dart';

class UsefulInfoBox extends StatelessWidget {
  final InfoBaseModel data;
  const UsefulInfoBox({required this.data, Key? key}) : super(key: key);

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
            final String info = selectInfo(index, data);
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
        Container(
          height: 1,
          width: 50.0,
          color: Colors.white,
        ),
        Expanded(
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
          SizedBox(width:50.0,child: Center(child: Icon(Icons.circle, color: infoColor[index]))),
          Expanded(
            child: Text(
              infoName[index],
              style: infoTextStyle,
            ),
          ),
          Text(
            textAlign: TextAlign.right,
            info,
            style: TextStyle(
                color: Color(0xff8A8A8E),
                fontSize: 17.0,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(width: 16.0),
        ],
      ),
    );
  }
}
