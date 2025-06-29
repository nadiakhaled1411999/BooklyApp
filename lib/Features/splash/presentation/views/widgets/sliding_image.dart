import 'package:bookly_app/core/utils/assets_app.dart';
import 'package:flutter/material.dart';

class  SlidingImage extends StatelessWidget {
  const  SlidingImage({super.key, required this.slidingAnimation});
final Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
              animation: slidingAnimation,
              builder: (Context, _) {
                return SlideTransition(
                  position: slidingAnimation,
                  child: Image.asset(
                    AssetsApp.book,
                    height: 150,
                  ),
                );
              });
  }
}