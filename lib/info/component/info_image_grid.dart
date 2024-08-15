import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class InfoImageGrid extends StatefulWidget {
  final List<String> images;
  final List<int> stair;

  const InfoImageGrid({required this.images, required this.stair, Key? key}) : super(key: key);

  @override
  _InfoImageGridState createState() => _InfoImageGridState();
}

class _InfoImageGridState extends State<InfoImageGrid> {
  bool showMoreImages = false;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    // Simulate a network loading delay
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
                childAspectRatio: 1.0,
              ),
              itemCount: showMoreImages ? widget.images.length : 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (_loading) {
                  // Skeleton loading view
                  return Container(
                    color: Colors.grey[300],
                    width: double.infinity,
                    height: double.infinity,
                  );
                } else {
                  // Normal view after loading
                  if (index == 3 && !showMoreImages && widget.images.length > 4) {
                    return _buildMoreOverlay(widget.images[index], widget.stair[index]);
                  } else {
                    return _buildGridItem(widget.images[index], widget.stair[index]);
                  }
                }
              },
            ),
          ),
          if (showMoreImages) ..._buildAdditionalImages(),
        ],
      ),
    );
  }

  Widget _buildGridItem(String imageUrl, int stair) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.5),
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 8,
            left: 16,
            child: Text(
              '$stair층',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMoreOverlay(String imageUrl, int stair) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showMoreImages = true;
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.5),
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
            ),
            Positioned(
              top: 8,
              left: 16,
              child: Text(
                '더보기',
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
  }

  List<Widget> _buildAdditionalImages() {
    return widget.images.skip(4).map((imageUrl) {
      int index = widget.images.indexOf(imageUrl);
      return Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: _buildGridItem(imageUrl, widget.stair[index]),
      );
    }).toList();
  }
}
