import 'dart:convert';
import 'dart:math';

import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;
import 'package:ui_app/app/app.locator.dart';
import 'package:ui_app/app/app.router.dart';
import 'package:ui_app/app/fetch_image_api_data.dart';
import '../../models/image_api_model.dart';

class HomePageViewModel extends BaseViewModel {
  String forNow = "hello";
  final AppRouter _appRouter = locator<AppRouter>();
  List<ImageHandleApi> imageList = [];
  String heart = "heart";
  double? heartSize = 30;

  var rand;

  likeThePic() {
    heart = 'heart-fill';
    heartSize = 25;
    notifyListeners();
  }

  removeLike() {
    heart = 'heart';
    notifyListeners();
  }

  fetchData() async {
    rand = Random().nextInt(99);
    notifyListeners();
    setBusy(true);
    var data = await getData();
    data.forEach((element) {
      imageList.add(ImageHandleApi.fromJson(element));
    });
    notifyListeners();
    print(imageList);
    setBusy(false);
  }

  changeRandomNumber() {
    rand = Random().nextInt(99);
    notifyListeners();
  }

  popHomePageView() {
    _appRouter.pop();
  }
}
