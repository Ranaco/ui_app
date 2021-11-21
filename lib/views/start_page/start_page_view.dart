import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:ui_app/views/start_page/start_page_viewmodel.dart';

class StartPageView extends StatelessWidget {
  const StartPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartPageViewModel>.reactive(
        viewModelBuilder: () => StartPageViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              body: ListView(
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/menu.svg',
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 300),
                      child: SvgPicture.asset(
                        'assets/icons/noun_Search_875356.svg',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 50),
                child: Text(
                  "Fashion Week",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 40,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  '2021 fashion show in Paris',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 20, top: 60),
                  child: Text(
                    'Explore',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                  ))
            ],
          ));
        });
  }
}
