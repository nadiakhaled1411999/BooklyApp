import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar,
            size: 14, color: Color(0xffFFDD4F)),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2455)",
          style: Styles.textStyle14.copyWith(
            color: const Color(0xff7f7f7f),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
