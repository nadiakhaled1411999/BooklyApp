import 'package:bookly_app/core/utils/assets_app.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amber,
            image: const DecorationImage(
              image: AssetImage(
                AssetsApp.testImage,
              ),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
