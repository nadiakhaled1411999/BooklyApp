import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/sliding_image.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/sliding_logo.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigationToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SlidingLogo(slidingAnimation: slidingAnimation),
          const SizedBox(
            height: 15,
          ),
          SlidingImage(slidingAnimation: slidingAnimation)

//const Text( "Read Free Books",textAlign: TextAlign.center,),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 05), end: Offset.zero)
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeOut,
    ));
    animationController.forward();
  }

  void navigationToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      //   Get.to(() => const HomeView(),
      //       transition: Transition.fadeIn, duration: kTransitionDuration);
      GoRouter.of(context).push(AppRouter.homeView);
    });
  }
}
