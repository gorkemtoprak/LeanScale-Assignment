// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../features/home/home_view.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    Main.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeView());
    },
    Home.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeView());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig('/#redirect',
            path: '/', redirectTo: '/main', fullMatch: true),
        _i2.RouteConfig(Main.name, path: '/main', children: [
          _i2.RouteConfig('#redirect',
              path: '', parent: Main.name, redirectTo: 'home', fullMatch: true),
          _i2.RouteConfig(Home.name, path: 'home', parent: Main.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomeView]
class Main extends _i2.PageRouteInfo<void> {
  const Main({List<_i2.PageRouteInfo>? children})
      : super(Main.name, path: '/main', initialChildren: children);

  static const String name = 'Main';
}

/// generated route for
/// [_i1.HomeView]
class Home extends _i2.PageRouteInfo<void> {
  const Home() : super(Home.name, path: 'home');

  static const String name = 'Home';
}
