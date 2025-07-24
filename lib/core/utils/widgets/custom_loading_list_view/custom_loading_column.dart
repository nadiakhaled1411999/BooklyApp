
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_list_view/custom_loading_row.dart';
import 'package:flutter/material.dart';

class CustomLoadingColumn extends StatelessWidget {
  const CustomLoadingColumn({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Text(
            "nnnnnnnnnnnn",
            style: Styles.textStyle20.copyWith(
              fontFamily: kGtSectraFineFontFamily,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        const Text(
          "mmmmmmm",
          style: Styles.textStyle14,
        ),
        const SizedBox(
          height: 3,
        ),
        const CustomLoadingRow()
      ],
    );
  }
}
