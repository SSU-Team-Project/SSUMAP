import 'package:flutter/material.dart';

import '../../common/layout/default_layout.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(child: Container(), title: 'MY',);
  }
}
