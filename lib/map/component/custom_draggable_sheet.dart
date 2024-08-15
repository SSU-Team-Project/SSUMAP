import 'package:flutter/material.dart';

class CustomDraggableSheet extends StatelessWidget {
  final Widget child;

  const CustomDraggableSheet({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.4,
      minChildSize: 0.1,
      maxChildSize: 0.9,
      builder: (BuildContext context, ScrollController scrollController) {
        return Column(
          children: [
            _Grip(scrollController: scrollController),
            Expanded(
              child: SingleChildScrollView(
                child: child,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _Grip extends StatelessWidget {
  final ScrollController scrollController;
  const _Grip({required this.scrollController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onVerticalDragUpdate: (details) {
        scrollController.position.moveTo(
          scrollController.position.pixels - details.primaryDelta!,
        );
      },
      child: SingleChildScrollView(
        controller: scrollController,
        child: Row(
          children: [
            Expanded(child: Container(color: Color(0xffF2F2F4))),
            Container(
              width: 36,
              height: 5,
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Color(0xffCDCDCA),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Expanded(child: Container(color: Color(0xffF2F2F4))),
          ],
        ),
      ),
    );
  }
}
