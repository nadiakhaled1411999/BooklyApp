import 'package:bookly_app/core/utils/assets_app.dart';
import 'package:flutter/material.dart';

class  SplashViewBody extends StatelessWidget {
  const  SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
 Image.asset(AssetsApp.logo)
        ],
      ),
    );
  }
}