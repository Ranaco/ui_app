// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'app.router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePageView());
    },
    StartPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const StartPageView());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomePageRoute.name, path: '/home-page-view'),
        RouteConfig(StartPageRoute.name, path: '/')
      ];
}

/// generated route for [HomePageView]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/home-page-view');

  static const String name = 'HomePageRoute';
}

/// generated route for [StartPageView]
class StartPageRoute extends PageRouteInfo<void> {
  const StartPageRoute() : super(name, path: '/');

  static const String name = 'StartPageRoute';
}
