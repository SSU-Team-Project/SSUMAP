import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:ssu_map_test/info/model/info_detail_model.dart';
import '../model/info_base_model.dart';
import '../model/info_model.dart';
import '../view/info_detail_screen.dart';

class InfoImage extends StatefulWidget {
  final InfoBaseModel data;

  const InfoImage({required this.data, Key? key}) : super(key: key);

  @override
  _InfoImageState createState() => _InfoImageState();
}

class _InfoImageState extends State<InfoImage> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Skeletonizer(
            enabled: _loading,
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 12.0,
                  childAspectRatio: (widget.data is InfoModel) ? 1 : 0.6,
                ),
                itemCount: widget.data.images.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (_loading) {
                    return Stack(
                      children: [
                        Container(
                          color: Colors.grey[300],
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ],
                    );
                  } else {
                    return _buildGridItem(index);
                  }
                }),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(int index) {
    if (widget.data is InfoModel) {
      final data = widget.data as InfoModel;
      return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => InfoDetailScreen(data: data.detailList[index])));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.5),
          child: Stack(
            children: [
              Image.network(
                data.images[index],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                top: 8,
                left: 16,
                child: Text(
                  '${data.stair[index]}층',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (widget.data is InfoDetailModel) {
      final data = widget.data as InfoDetailModel;
      return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          data.images[index],
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
    } else {
      return Container();
    }
  }
}
