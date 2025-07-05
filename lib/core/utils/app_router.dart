import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
static const  homeView='/homeView';
static const  bookDetailsView='/bookDetailsView';
static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
  GoRoute(
      path:homeView ,
      builder: (context, state) => const HomeView(),
    ),
 GoRoute(
      path:bookDetailsView ,
      builder: (context, state) => const BookDetailsView(),
    ),
  ],
);
}