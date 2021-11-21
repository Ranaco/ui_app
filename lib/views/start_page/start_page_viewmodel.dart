import 'package:stacked/stacked.dart';
import 'package:ui_app/app/app.locator.dart';
import 'package:ui_app/app/app.router.dart';

class StartPageViewModel extends BaseViewModel {
  AppRouter _appRouter = locator<AppRouter>();
  takeToHomePageView() async {
    await _appRouter.navigate(HomePageRoute());
  }
}
