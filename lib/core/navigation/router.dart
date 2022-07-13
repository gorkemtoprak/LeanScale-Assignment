import 'package:auto_route/auto_route.dart';
import 'package:lean_scale_case/features/checkout/checkout_view.dart';

import '../../features/home/home_view.dart';
import '../../features/master/master_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MasterView,
      name: 'master',
      path: '/master',
      initial: true,
      children: [
        RedirectRoute(path: '', redirectTo: 'home'),
        AutoRoute(initial: true, page: HomeView, name: 'home', path: 'home'),
        AutoRoute(page: CheckoutView, name: 'checkout', path: 'checkout'),
      ],
    ),
    AutoRoute(
      page: CheckoutView,
      name: 'check',
      path: '/check',
    ),
  ],
)
class $AppRouter {}
