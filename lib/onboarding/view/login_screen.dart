import 'package:flutter/material.dart';

import '../../common/layout/default_layout.dart';
import '../../common/view/root_tab.dart';
import '../component/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String userName = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          top: true,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.125,
                ),
                _Title(),
                CustomTextFormField(
                  hintText: 'Email',
                  onChange: (String value) {
                    userName = value;
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                CustomTextFormField(
                  hintText: 'Password',
                  onChange: (String value) {
                    password = value;
                  },
                  obscureText: true,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                _LoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Title extends StatefulWidget {
  const _Title({super.key});

  @override
  State<_Title> createState() => _TitleState();
}

class _TitleState extends State<_Title> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'SSUMAP',
      style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w600),
      textAlign: TextAlign.center,
    );
  }
}

class _LoginButton extends StatefulWidget {
  const _LoginButton({super.key});

  @override
  State<_LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<_LoginButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => RootTab()));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff0085FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 14.0),
      ),
      child: Text(
        '로그인',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
