import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:ui_app/app/app.locator.dart';
import 'package:ui_app/app/app.router.dart';
import 'package:ui_app/app/fetch_image_api_data.dart';
import 'package:ui_app/models/image_api_model.dart';

class StartPageViewModel extends BaseViewModel {
  AppRouter _appRouter = locator<AppRouter>();
  List<ImageHandleApi> imageList = [];
  var rand;
  int? index;

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

    showDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }


  takeToHomePageView(inx) async {
    index = inx;
    notifyListeners();
    await _appRouter.navigate(HomePageRoute(index: index!));
  }
}
