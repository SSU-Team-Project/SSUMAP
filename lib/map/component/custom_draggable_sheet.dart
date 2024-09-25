import 'package:flutter/material.dart';

class CustomDraggableSheet extends StatefulWidget {
  final Widget preview;
  final Widget view;

  const CustomDraggableSheet({required this.preview, required this.view, Key? key}) : super(key: key);

  @override
  _CustomDraggableSheetState createState() => _CustomDraggableSheetState();
}

class _CustomDraggableSheetState extends State<CustomDraggableSheet> {
  late DraggableScrollableController _draggableController;

  @override
  void initState() {
    super.initState();
    _draggableController = DraggableScrollableController();
    _draggableController.addListener(_checkSheetHeight);
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.4,
      minChildSize: 0.1,
      maxChildSize: 0.9,
      controller: _draggableController,
      builder: (BuildContext context, ScrollController scrollController) {
        return Column(
          children: [
            _Grip(scrollController: scrollController),
            Expanded(
              child: SingleChildScrollView(
                child: widget.preview,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        );
      },
    );
  }

  void _checkSheetHeight() {
    if (_draggableController.size >= 0.5) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => widget.view),
      );
    }
  }

  @override
  void dispose() {
    _draggableController.removeListener(_checkSheetHeight);
    _draggableController.dispose();
    super.dispose();
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
              width: 40,
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