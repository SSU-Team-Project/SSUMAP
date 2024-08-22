import 'package:flutter/material.dart';
import 'data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m3_carousel/m3_carousel.dart';

// 지도 상세 정보
class LocationBottomSheet extends StatefulWidget {
  const LocationBottomSheet({super.key});

  @override
  State<LocationBottomSheet> createState() => LocationBottomSheetState();
}

class LocationBottomSheetState extends State<LocationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 10),
          ElevatedButton(
            child: const Text('Display'),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 500,
                    child: ListView(
                      children: <Widget>[
                        Carousel(),
                        ListTile(
                          leading: CircleAvatar(child:Icon(Icons.menu_book)),
                          title: Text("Suitable to study"),
                          subtitle: Text("Supporting Information..."),
                          trailing: Icon(Icons.sentiment_satisfied_alt),
                        ),
                        Divider(height: 0),
                        ListTile(
                          leading: CircleAvatar(child:Icon(Icons.bedtime)),
                          title: Text("Suitable to sleep"),
                          subtitle: Text("Supporting Information..."),
                          trailing: Icon(Icons.sentiment_neutral_outlined),
                        ),
                        Divider(height: 0),
                        ListTile(
                          leading: CircleAvatar(child:Icon(Icons.casino)),
                          title: Text("Suitable to play"),
                          subtitle: Text("Supporting Information..."),
                          trailing: Icon(Icons.sentiment_dissatisfied),
                        ),
                        Divider(height: 0),
                        ListTile(
                          leading: CircleAvatar(child:Icon(Icons.ac_unit)),
                          title: Text("AC Unit"),
                          subtitle: Text("Supporting Information..."),
                          trailing: Icon(Icons.close),
                        ),
                        Divider(height: 0),
                        ListTile(
                          leading: CircleAvatar(child:Icon(Icons.power)),
                          title: Text("Plug"),
                          subtitle: Text("Supporting Information..."),
                          trailing: Icon(Icons.check),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 300,
      padding: const EdgeInsets.all(10),
      child: M3Carousel(
        visible: 3,
        borderRadius: 20,
        slideAnimationDuration: 300,
        titleFadeAnimationDuration: 300,
        childClick: (int index) {
          print("Clicked $index");
        },
        children: thumbnails, // from data.dart
      ),
    );
  }
}

// 알림 레이아웃
class NotiLayout extends StatelessWidget {
  const NotiLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            child: SvgPicture.asset('assets/icons/ssu.svg', height: 12, color: Theme.of(context).colorScheme.primary,),
          ),
          title: Text('Headline'),
          subtitle: Text('총학 행사'),
          trailing: Text('Today'),
        ),
        Divider(height: 0),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.handyman_outlined)),
          title: Text('Headline'),
          subtitle: Text('단과대 행사'),
          trailing: Text('Yesterday'),
        ),
        Divider(height: 0),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.palette_outlined)),
          title: Text('Headline'),
          subtitle: Text('학부 행사'),
          trailing: Text('2 days ago'),
        ),
        Divider(height: 0),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            child: Icon(Icons.campaign_outlined, color: Theme.of(context).colorScheme.secondary),
          ),
          title: Text('Headline'),
          subtitle: Text('공지 사항'),
          trailing: Text('3 days ago'),
        ),
        Divider(height: 0),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.errorContainer,
            child: Icon(Icons.dangerous_outlined, color: Theme.of(context).colorScheme.error),
          ),
          title: Text('Headline'),
          subtitle: Text('공지 사항 urgent'),
          trailing: Text('4 days ago'),
        ),
      ],
    );
  }
}

// MY 레이아웃
class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            // TODO : 캐릭터 보여주기
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(width: 16),
              // 수정 FAB
              FloatingActionButton.extended(
                onPressed: () {
                  // TODO : onPressed : 상점으로
                },
                label: const Text('수정'),
                icon: const Icon(Icons.checkroom),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

