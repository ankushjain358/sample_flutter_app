import 'package:go_router/go_router.dart';
import 'package:sample_flutter_app/screens/auth/auth_screen.dart';
import 'package:sample_flutter_app/screens/auth/auth_screen_2.dart';
import 'package:sample_flutter_app/screens/home/home_screen.dart';

class AppRoutes {
  static const home = '/';
  static const auth = '/auth';
  static const auth2 = '/auth2';

  static GoRouter getRoutes() {
    return GoRouter(
      initialLocation: AppRoutes.auth2,
      routes: [
        GoRoute(
          path: AppRoutes.home,
          builder: (context, state) => const HomeScreenWidget(),
        ),
        GoRoute(
          path: AppRoutes.auth,
          builder: (context, state) => const AuthScreenWidget(),
        ),
          GoRoute(
          path: AppRoutes.auth2,
          builder: (context, state) => const AuthScreen2(),
        ),
      ],
    );
  }
}
