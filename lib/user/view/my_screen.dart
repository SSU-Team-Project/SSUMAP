import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../common/layout/default_layout.dart';

const characterBox = 'characterBox';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int activeIndex = 0; // 활성화된 카드의 인덱스를 저장

  @override
  void initState() {
    super.initState();
    _loadActiveIndex();
  }

  // Hive에서 활성화된 인덱스를 불러오는 메서드
  void _loadActiveIndex() async {
    final box = await Hive.openBox(characterBox);
    setState(() {
      activeIndex = box.get('index', defaultValue: 0); // 기본값을 0으로 설정
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return DefaultLayout(
      child: SizedBox(
        height: height * 0.75,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _onCardTap(0),
                  child: CharacterCard(
                    imgUrl: 'asset/character/ssu_boy.png',
                    isActive: activeIndex == 0,
                    activeColor: '0085FF',
                    bgColor: 'A7AAF2',
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () => _onCardTap(1),
                  child: CharacterCard(
                    imgUrl: 'asset/character/ssu_girl.png',
                    isActive: activeIndex == 1,
                    activeColor: '004324',
                    bgColor: '8DE3BB',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _onCardTap(2),
                  child: CharacterCard(
                    imgUrl: 'asset/character/ssu_white_girl.png',
                    isActive: activeIndex == 2,
                    activeColor: '8A8A8A',
                    bgColor: 'F9F9F9',
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () => _onCardTap(3),
                  child: CharacterCard(
                    imgUrl: 'asset/character/ssu_red_girl.png',
                    isActive: activeIndex == 3,
                    activeColor: 'FF7171',
                    bgColor: 'FCCDCD',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      title: 'MY',
    );
  }

  void _onCardTap(int index) async {
    setState(() {
      activeIndex = index; // 선택된 카드의 인덱스를 활성화
    });

    final box = await Hive.openBox(characterBox);
    box.put('index', index); // Hive에 활성화된 인덱스 저장
  }
}

class CharacterCard extends StatelessWidget {
  final String imgUrl;
  final bool isActive;
  final String activeColor;
  final String bgColor;

  const CharacterCard({
    required this.imgUrl,
    required this.activeColor,
    required this.bgColor,
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bordColor = int.parse('0xff$activeColor');
    final backgroundColor = int.parse('0xff$bgColor');

    return Container(
      padding: EdgeInsets.all(8.0),
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        color: Color(backgroundColor),
        border: Border.all(
          width: isActive ? 5 : 0.0,
          color: isActive ? Color(bordColor) : Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imgUrl,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
