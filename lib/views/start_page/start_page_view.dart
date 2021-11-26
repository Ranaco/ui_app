import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:ui_app/views/start_page/start_page_viewmodel.dart';

class StartPageView extends StatelessWidget {
  const StartPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();

    return ViewModelBuilder<StartPageViewModel>.reactive(
        viewModelBuilder: () => StartPageViewModel(),
        onModelReady: (model) => model.fetchData(),
        builder: (context, model, child) {
          if (model.isBusy) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          return Scaffold(
            key: scaffoldKey,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          scaffoldKey.currentState!.openDrawer();
                        },
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
                    "Photography Week",
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
                    '2021 photo show in Paris',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 20, top: 60),
                    child: Text(
                      'Explore',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                    )),
                Expanded(
                    child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 180,
                      child: GestureDetector(
                        onTap: () {
                          model.takeToHomePageView(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.pink.shade500,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      model.imageList[index].download_url),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    );
                  },
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  staggeredTileBuilder: (index) => StaggeredTile.count(
                      (index % 3 == 0) ? 2 : 1, (index % 5 == 0) ? 2 : 1),
                ))
              ],
            ),
            drawer: Drawer(),
          );
        });
  }
}
