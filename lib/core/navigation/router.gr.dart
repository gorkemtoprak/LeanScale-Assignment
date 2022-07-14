// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../features/categories/categories_view.dart' as _i4;
import '../../features/checkout/checkout_view.dart' as _i6;
import '../../features/home/home_view.dart' as _i5;
import '../../features/master/master_view.dart' as _i1;
import '../../features/restaurants/restaurants_view.dart' as _i2;
import '../../features/restaurants/subviews/restaurant_detailed_view.dart'
    as _i3;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    Master.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MasterView());
    },
    Restaurants.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.RestaurantsView());
    },
    RestaurantsDetail.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RestaurantsDetailedView());
    },
    Categories.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.CategoriesView());
    },
    Home.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomeView());
    },
    Rest.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.RestaurantsView());
    },
    Checkout.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.CheckoutView());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/master', fullMatch: true),
        _i7.RouteConfig(Master.name, path: '/master', children: [
          _i7.RouteConfig('#redirect',
              path: '',
              parent: Master.name,
              redirectTo: 'home',
              fullMatch: true),
          _i7.RouteConfig(Home.name, path: 'home', parent: Master.name),
          _i7.RouteConfig(Rest.name, path: 'rest', parent: Master.name),
          _i7.RouteConfig(Checkout.name, path: 'checkout', parent: Master.name)
        ]),
        _i7.RouteConfig(Restaurants.name, path: '/restaurants'),
        _i7.RouteConfig(RestaurantsDetail.name, path: '/restaurantsDetail'),
        _i7.RouteConfig(Categories.name, path: '/categories')
      ];
}

/// generated route for
/// [_i1.MasterView]
class Master extends _i7.PageRouteInfo<void> {
  const Master({List<_i7.PageRouteInfo>? children})
      : super(Master.name, path: '/master', initialChildren: children);

  static const String name = 'Master';
}

/// generated route for
/// [_i2.RestaurantsView]
class Restaurants extends _i7.PageRouteInfo<void> {
  const Restaurants() : super(Restaurants.name, path: '/restaurants');

  static const String name = 'Restaurants';
}

/// generated route for
/// [_i3.RestaurantsDetailedView]
class RestaurantsDetail extends _i7.PageRouteInfo<void> {
  const RestaurantsDetail()
      : super(RestaurantsDetail.name, path: '/restaurantsDetail');

  static const String name = 'RestaurantsDetail';
}

/// generated route for
/// [_i4.CategoriesView]
class Categories extends _i7.PageRouteInfo<void> {
  const Categories() : super(Categories.name, path: '/categories');

  static const String name = 'Categories';
}

/// generated route for
/// [_i5.HomeView]
class Home extends _i7.PageRouteInfo<void> {
  const Home() : super(Home.name, path: 'home');

  static const String name = 'Home';
}

/// generated route for
/// [_i2.RestaurantsView]
class Rest extends _i7.PageRouteInfo<void> {
  const Rest() : super(Rest.name, path: 'rest');

  static const String name = 'Rest';
}

/// generated route for
/// [_i6.CheckoutView]
class Checkout extends _i7.PageRouteInfo<void> {
  const Checkout() : super(Checkout.name, path: 'checkout');

  static const String name = 'Checkout';
}
