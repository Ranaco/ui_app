import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ui_app/views/home_page/home_page_view.dart';
part 'app.router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: "View,Route", routes: <AutoRoute>[
  AutoRoute(
    page: HomePageView,
    initial: true,
  )
])
@singleton
class AppRouter extends _$AppRouter {}
