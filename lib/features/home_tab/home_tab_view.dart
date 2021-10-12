import 'package:flutter/material.dart';
import 'package:stream_alerts/features/home/home_view.dart';
import 'package:stream_alerts/util/bottom_bar_controller.dart';

class HomeTabView extends StatelessWidget {
  HomeTabView({Key? key}) : super(key: key);

  final _barController = BottomBarController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _HomeTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: _fabButton(context),
          bottomNavigationBar: _bottomAppBAr(context),
          body: _tabbarView(),
        ));
  }

  FloatingActionButton _fabButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Future.microtask(() {
          _barController.changeAppBarState();
        });
      },
      child: const Icon(Icons.add),
    );
  }

  BottomAppBar _bottomAppBAr(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Theme.of(context).colorScheme.primary,
      child: const TabBar(tabs: [
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.settings)),
      ]),
    );
  }

  TabBarView _tabbarView() {
    return TabBarView(children: [
      HomeView(controller: _barController),
      Container(),
    ]);
  }
}

enum _HomeTabViews { profile, settings }
