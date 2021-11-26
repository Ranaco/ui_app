import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:ui_app/constants.dart';
import 'app/app.locator.dart';
import 'app/app.router.dart';

void main(List<String> args) async {
  await Supabase.initialize(anonKey: API_KEY, url: API_LINK);
  setupLocator();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = locator<AppRouter>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      routeInformationProvider: _appRouter.routeInfoProvider(),
    );
  }
}
