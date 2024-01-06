import 'package:go_router/go_router.dart';
import 'package:sample_flutter_app/screens/auth/auth_screen_widget.dart';
import 'package:sample_flutter_app/screens/home/home_screen_widget.dart';

class AppRoutes {
  static const home = '/';
  static const auth = '/auth';

  static GoRouter getRoutes() {
    return GoRouter(
      initialLocation: AppRoutes.auth,
      routes: [
        GoRoute(
          path: AppRoutes.home,
          builder: (context, state) => const HomeScreenWidget(),
        ),
        GoRoute(
          path: AppRoutes.auth,
          builder: (context, state) => const AuthScreenWidget(),
        )
      ],
    );
  }
}
