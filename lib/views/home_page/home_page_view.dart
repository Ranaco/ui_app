// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:ui_app/views/home_page/home_page_viewmodel.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
        viewModelBuilder: () => HomePageViewModel(),
        onModelReady: (model) => model.fetchData(),
        builder: (context, model, child) {
          if (model.isBusy) {
            return Center(child: CircularProgressIndicator());
          }
          return Material(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              model.imageList[model.rand].download_url),
                          fit: BoxFit.fill)),
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: AppBar(
                    leading: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/arrow_left.svg',
                        color: Colors.white,
                      ),
                    ),
                    actions: [
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                            'assets/icons/dots-vertical.svg',
                            color: Colors.white),
                      )
                    ],
                    leadingWidth: 30,
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                  ),
                  body: ListView(
                    children: [
                      const SizedBox(
                        height: 120,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SvgPicture.asset('assets/icons/comment.svg',
                                color: Colors.white, height: 30, width: 30),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: SvgPicture.asset(
                              'assets/icons/heart.svg',
                              color: Colors.white,
                              height: 30,
                              width: 30,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 34.0),
                            child: SvgPicture.asset(
                              'assets/icons/datatime_clock.svg',
                              color: Colors.white,
                              height: 22,
                              width: 22,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 220,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25),
                        child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white.withOpacity(0.15)),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      model.imageList[model.rand].author,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 26),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 215, top: 90),
                                  child: GestureDetector(
                                    onTap: () => model.changeRandomNumber(),
                                    child: Container(
                                      height: 50,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.pink.withOpacity(0.7)),
                                      child: const Center(
                                        child: Text(
                                          "Next",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
