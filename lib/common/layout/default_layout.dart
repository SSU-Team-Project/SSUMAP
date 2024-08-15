import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final String? title;
  final Widget? bottomNavigationBar;

  const DefaultLayout({
    required this.child,
    this.backgroundColor,
    this.title,
    this.bottomNavigationBar,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      body: Column(
        children: [
          renderAppbar(),
          child,
        ],
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget renderAppbar() {
    if (title == null) {
      return Container();
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 64.0, left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title!,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      );
    }
  }
}
