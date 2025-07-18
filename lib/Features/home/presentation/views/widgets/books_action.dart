import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
onPressed: (){
  bookModel.volumeInfo.previewLink;
},
              text: "free",
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius:const  BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async{
                final Uri uri=Uri.parse( bookModel.volumeInfo.previewLink!);
if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }
              },
              text: "free preview",
              textColor: Colors.white,
              backgroundColor: Colors.deepOrangeAccent,
              borderRadius:const  BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          )
        ],
      ),
    );
  }
}
