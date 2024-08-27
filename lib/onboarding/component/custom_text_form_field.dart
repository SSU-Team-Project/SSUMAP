import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autofocus;
  final ValueChanged<String>? onChange;

  const CustomTextFormField({
    required this.onChange,
    this.hintText,
    this.errorText,
    this.obscureText = false,
    this.autofocus = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffE8E8E8),
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(15.0),
    );

    return TextFormField(
      cursorColor: Colors.black,
      // 비밀번호 입력할 때 문자 가리기 - bool 값
      obscureText: obscureText,
      // 위젯이 화면에 보일 때 자동으로 focus - bool 값
      autofocus: autofocus,
      onChanged: onChange,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15),
        hintText: hintText,
        errorText: errorText,
        hintStyle: TextStyle(
          color: Color(0xffA9A9A9),
          fontSize: 18.0,
        ),
        fillColor: Color(0xffE8E8E8),
        filled: true,
        // filled가 true여야 배경색 활성화
        border: baseBorder,
        enabledBorder: baseBorder,
        focusedBorder: baseBorder.copyWith(
          borderSide: baseBorder.borderSide.copyWith(color: Color(0xff0085FF)),
        ),
      ),
    );
  }
}
