import 'package:flutter/material.dart';

class Title extends StatelessWidget{
  final String title;
  const Title({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize:18.0, fontWeight: FontWeight.w500),),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.circle, color: Color(0XFFD1D1D1), size: 32.0),
        ),
      ],
    );
  }
}