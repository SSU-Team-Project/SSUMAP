import 'package:flutter/material.dart';

import '../model/info_model.dart';
import '../view/info_detail_screen.dart';

class SpecInfoStairList extends StatelessWidget {
  final InfoModel data;

  const SpecInfoStairList({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    double height = data.stair.length * 52;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: height,
        child: ListView.builder(
          itemCount: data.stair.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) =>
                        InfoDetailScreen(data: data.detailList[index])));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(7.5),
                      child: Image.network(
                        data.images[index],
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      '${data.stair[index]}층',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      data.detailList[index].info,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff86868A)),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
