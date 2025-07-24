import 'package:bookly_app/core/utils/widgets/custom_loading_list_view/custom_loading_column.dart';
import 'package:flutter/material.dart';
import 'package:redacted/redacted.dart';

class VerticalLoadingListView extends StatelessWidget {
  const VerticalLoadingListView({super.key });


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 125,
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: AspectRatio(
                          aspectRatio: 2.6 / 4,
                          child: Image.asset("assets/images/test_image.png")
                              .redacted(context: context, redact: true))),
                  const SizedBox(
                    width: 30,
                  ),
                   const Expanded(
                    child: CustomLoadingColumn(),
                  )
                ],
              ),
            ).redacted(
                context: context,
                redact: true,
              ));
      },
    );
  }
}
