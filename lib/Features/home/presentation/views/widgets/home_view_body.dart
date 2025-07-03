import 'package:bookly_app/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/core/utils/assets_app.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Seller",
            style: Styles.textStyle18,
          ),
SizedBox(height: 20,),
BestSellerListViewItem()


        ],
      ),
    );
  }
}
class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(children: [
 AspectRatio(
  aspectRatio: 2.5/4,
  child: Container(
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
    color: Colors.amberAccent,
    image:const DecorationImage(image:  AssetImage( AssetsApp.testImage),fit: BoxFit.fill,)
  ),
  ),
),
 const SizedBox(width: 20,),
const Column(
children: [
Text(
"Best seller book title",style:Styles.textStyle30
),



],
)

      ],),
    );
  }
}
