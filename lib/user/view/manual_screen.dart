import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common/layout/default_layout.dart';

class ManualScreen extends StatefulWidget {
  const ManualScreen({Key? key}) : super(key: key);

  @override
  _ManualScreenState createState() => _ManualScreenState();
}

class _ManualScreenState extends State<ManualScreen> {
  final PageController _controller = PageController(initialPage: 0);
  final List<String> _images = [
    "asset/image/manual1.png",
    "asset/image/manual2.png",
    "asset/image/manual3.png",
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultLayout(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            SizedBox(
              width: width,
              height: height*0.8,
              child: PageView.builder(
                controller: _controller,
                itemBuilder: (context, index) {
                  final image = _images[index % _images.length];
                  return Center(
                    child: Image.asset(
                      image,
                      width: width,
                      fit: BoxFit.contain,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 5), // 페이지 인디케이터 위 공간 추가
            SmoothPageIndicator(
              controller: _controller,  // PageController
              count: _images.length,  // 페이지 수
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Colors.blue,  // 활성화된 점 색상
                dotColor: Colors.grey,  // 비활성화된 점 색상
              ),
            ),
          ],
        ),
      ),
    );
  }
}
