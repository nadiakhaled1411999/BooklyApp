import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: CustomBookImage(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fin.pinterest.com%2Fpin%2F735001601664537172%2F&psig=AOvVaw3geaqvhdxxxwjClhPWtHXw&ust=1752690608709000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCPjbvry_v44DFQAAAAAdAAAAABAE",),
            );
          }),
    );
  }
}
