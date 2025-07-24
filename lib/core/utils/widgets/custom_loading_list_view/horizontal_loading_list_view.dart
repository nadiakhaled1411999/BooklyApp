import 'package:flutter/material.dart';
import 'package:redacted/redacted.dart';

class HorizontalLoadingListView extends StatelessWidget {
  const HorizontalLoadingListView({super.key, required this.itemHeight});
  final double itemHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * itemHeight,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AspectRatio(
                      aspectRatio: 2.6 / 4,
                      child: Image.asset("assets/images/test_image.png")
                          .redacted(context: context, redact: true))),
            );
          }),
    ).redacted(context: context, redact: true);
  }
}
