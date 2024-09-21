import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoogleLogin extends StatelessWidget {
  final GestureTapCallback signInWithGoogle;

  const GoogleLogin({required this.signInWithGoogle, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: signInWithGoogle,
      child: SvgPicture.asset(
        'asset/google/android_light_rd_ctn.svg',
        width: 240,
        height: 50,
      ),
    );
  }
}
