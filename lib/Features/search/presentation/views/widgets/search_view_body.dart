import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class  SearchViewBody extends StatelessWidget {
  const  SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( children: [
CustomSearchTextField()
    ],);
  }
}
class  CustomSearchTextField extends StatelessWidget {
  const  CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText:"Search",
suffixIcon:Icon( FontAwesomeIcons.magnifyingGlass,size: 22,)
      ),

    );
  }
}