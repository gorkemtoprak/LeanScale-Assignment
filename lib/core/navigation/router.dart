import 'package:auto_route/auto_route.dart';
import 'package:lean_scale_case/features/categories/categories_view.dart';
import 'package:lean_scale_case/features/checkout/checkout_view.dart';
import 'package:lean_scale_case/features/profile/profile_view.dart';
import 'package:lean_scale_case/features/restaurants/restaurants_view.dart';

import '../../features/home/home_view.dart';
import '../../features/master/master_view.dart';
import '../../features/restaurants/subviews/restaurant_detailed_view.dart';

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
        AutoRoute(page: RestaurantsView, name: 'rest', path: 'rest'),
        AutoRoute(page: CheckoutView, name: 'checkout', path: 'checkout'),
        AutoRoute(page: ProfileView, name: 'profile', path: 'profile'),
      ],
    ),
    AutoRoute(
      page: RestaurantsView,
      name: 'restaurants',
      path: '/restaurants',
    ),
    AutoRoute(
      page: RestaurantsDetailedView,
      name: 'restaurantsDetail',
      path: '/restaurantsDetail',
    ),
    AutoRoute(
      page: CategoriesView,
      name: 'categories',
      path: '/categories',
    ),
  ],
)
class $AppRouter {}
