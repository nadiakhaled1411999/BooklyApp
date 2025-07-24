import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoDataSearch extends StatelessWidget {
  const NoDataSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.only(bottom: 160, top: 100),
          child: Lottie.asset('assets/lottie/shapes_moving.json'),
        );
  }
}