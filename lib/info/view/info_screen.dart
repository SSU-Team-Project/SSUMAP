import 'package:flutter/material.dart' hide Title;
import 'package:ssumap/info/view/preview_screen.dart';
import '../../common/layout/default_layout.dart';
import '../model/info_model.dart';

class InfoScreen extends StatelessWidget {
  final InfoModel data;
  final String title;

  const InfoScreen({required this.data, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultLayout(
          backgroundColor: Color(0xffF2F2F4),
          child: PreviewScreen(data: data, title: title)),
    );
  }
}
