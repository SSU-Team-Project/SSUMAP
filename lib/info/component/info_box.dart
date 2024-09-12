import 'package:flutter/material.dart';
import 'package:ssumap/info/const/style.dart';
import 'package:ssumap/info/model/info_detail_model.dart';

class InfoBox extends StatelessWidget {
  final InfoDetailModel data;

  const InfoBox({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.5),
        color: Colors.white,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:16.0),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              data.info,
              style: infoTextStyle,
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ),
    );
  }
}
