import 'package:flutter/material.dart';
import 'package:machine_test/presentation/utils/colors/colors.dart';
import 'package:machine_test/presentation/view/favourites/favourites.dart';
import 'package:machine_test/presentation/view/home/home_page.dart';
import 'package:machine_test/presentation/view/tab_bar.dart/widgets/tab_widget.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const TabBar(
              dividerColor: Colors.white,
              indicatorPadding: EdgeInsets.all(0),
              overlayColor: MaterialStatePropertyAll(Colors.transparent),
              indicator: BoxDecoration(
                shape: BoxShape.rectangle,
                color: kTabBgColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              tabs: [
                Tab(
                  child: TabWidget(
                    icon: Icons.format_list_bulleted_rounded,
                    text: 'News',
                    iconColor: kBlack,
                  ),
                ),
                Tab(
                  child: TabWidget(
                    icon: Icons.favorite,
                    text: 'Favs',
                    iconColor: kIconColor,
                  ),
                ),
              ]),
        ),
        body: const TabBarView(children: [
          HomePage(),
          FavouritePage(),
        ]),
      ),
    );
  }
}
