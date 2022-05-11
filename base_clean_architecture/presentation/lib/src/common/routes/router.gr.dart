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

import '../../features/articles/details/article_detail_screen.dart' as _i3;
import '../../features/articles/list/article_list_screen.dart' as _i2;
import '../../features/login/login_screen.dart' as _i1;

class FeatureRouter extends _i4.RootStackRouter {
  FeatureRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.LoginScreen());
    },
    ArticleListScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.ArticleListScreen());
    },
    ArticleDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailScreenRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.ArticleDetailScreen(id: args.id));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(LoginScreenRoute.name, path: '/'),
        _i4.RouteConfig(ArticleListScreenRoute.name,
            path: '/article-list-screen'),
        _i4.RouteConfig(ArticleDetailScreenRoute.name,
            path: '/article-detail-screen')
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreenRoute extends _i4.PageRouteInfo<void> {
  const LoginScreenRoute() : super(LoginScreenRoute.name, path: '/');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i2.ArticleListScreen]
class ArticleListScreenRoute extends _i4.PageRouteInfo<void> {
  const ArticleListScreenRoute()
      : super(ArticleListScreenRoute.name, path: '/article-list-screen');

  static const String name = 'ArticleListScreenRoute';
}

/// generated route for
/// [_i3.ArticleDetailScreen]
class ArticleDetailScreenRoute
    extends _i4.PageRouteInfo<ArticleDetailScreenRouteArgs> {
  ArticleDetailScreenRoute({required int id})
      : super(ArticleDetailScreenRoute.name,
            path: '/article-detail-screen',
            args: ArticleDetailScreenRouteArgs(id: id));

  static const String name = 'ArticleDetailScreenRoute';
}

class ArticleDetailScreenRouteArgs {
  const ArticleDetailScreenRouteArgs({required this.id});

  final int id;

  @override
  String toString() {
    return 'ArticleDetailScreenRouteArgs{id: $id}';
  }
}
