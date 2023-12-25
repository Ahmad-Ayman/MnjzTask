import 'package:go_router/go_router.dart';

import '../../../features/home/presentation/screens/home_screen.dart';
import 'enums.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
          name: Routes.MyAppScreen.name,
          builder: (context, state) => HomeScreen()),
      // GoRoute(
      //   path: '/movieDetails',
      //   name: Routes.MovieDetailsScreen.name,
      //   pageBuilder: (context, state) {
      //     ProductModel productModel = state.extra as ProductModel;
      //     return CustomTransitionPage<void>(
      //       key: state.pageKey,
      //       child: MovieDetailsScreen(
      //         movieData: movieDataModel,
      //       ),
      //       transitionsBuilder:
      //           (context, animation, secondaryAnimation, child) =>
      //               ScaleTransition(scale: animation, child: child),
      //     );
      //   },
      // ),
    ],
  );
}
