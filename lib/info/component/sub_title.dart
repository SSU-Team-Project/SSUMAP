import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String subTitle;
  const SubTitle({required this.subTitle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subTitle, style: TextStyle(color: Color(0XFF858588),fontWeight: FontWeight.w500),),
          SizedBox(height: 0.25),
          Container(
            height: 0.8,
            color: Color(0XFFB2B2B4),
          ),
        ],
      ),
    );
  }
}
