import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomLoadingRow extends StatelessWidget {
  const CustomLoadingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "free",
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const BookRating(
          rating: 4.5,
          count: 0,
        ),
      ],
    );
  }
}
