import 'package:auto_route/auto_route.dart';

import '../../features/home/home_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeView,
      name: 'main',
      path: '/main',
      initial: true,
      children: [
        RedirectRoute(path: '', redirectTo: 'home'),
        AutoRoute(initial: true, page: HomeView, name: 'home', path: 'home'),
      ],
    ),
  ],
)
class $AppRouter {}
