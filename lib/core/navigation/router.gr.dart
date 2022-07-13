// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../features/checkout/checkout_view.dart' as _i2;
import '../../features/home/home_view.dart' as _i3;
import '../../features/master/master_view.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    Master.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MasterView());
    },
    Check.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.CheckoutView());
    },
    Home.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeView());
    },
    Checkout.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.CheckoutView());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: '/master', fullMatch: true),
        _i4.RouteConfig(Master.name, path: '/master', children: [
          _i4.RouteConfig('#redirect',
              path: '',
              parent: Master.name,
              redirectTo: 'home',
              fullMatch: true),
          _i4.RouteConfig(Home.name, path: 'home', parent: Master.name),
          _i4.RouteConfig(Checkout.name, path: 'checkout', parent: Master.name)
        ]),
        _i4.RouteConfig(Check.name, path: '/check')
      ];
}

/// generated route for
/// [_i1.MasterView]
class Master extends _i4.PageRouteInfo<void> {
  const Master({List<_i4.PageRouteInfo>? children})
      : super(Master.name, path: '/master', initialChildren: children);

  static const String name = 'Master';
}

/// generated route for
/// [_i2.CheckoutView]
class Check extends _i4.PageRouteInfo<void> {
  const Check() : super(Check.name, path: '/check');

  static const String name = 'Check';
}

/// generated route for
/// [_i3.HomeView]
class Home extends _i4.PageRouteInfo<void> {
  const Home() : super(Home.name, path: 'home');

  static const String name = 'Home';
}

/// generated route for
/// [_i2.CheckoutView]
class Checkout extends _i4.PageRouteInfo<void> {
  const Checkout() : super(Checkout.name, path: 'checkout');

  static const String name = 'Checkout';
}
