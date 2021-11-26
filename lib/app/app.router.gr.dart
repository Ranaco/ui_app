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
      final args = routeData.argsAs<HomePageRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: HomePageView(key: args.key, index: args.index));
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
class HomePageRoute extends PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({Key? key, required int index})
      : super(name,
            path: '/home-page-view',
            args: HomePageRouteArgs(key: key, index: index));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key, required this.index});

  final Key? key;

  final int index;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for [StartPageView]
class StartPageRoute extends PageRouteInfo<void> {
  const StartPageRoute() : super(name, path: '/');

  static const String name = 'StartPageRoute';
}
