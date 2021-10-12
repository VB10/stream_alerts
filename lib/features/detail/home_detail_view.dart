import 'package:flutter/material.dart';
import 'package:stream_alerts/util/bottom_bar_controller.dart';
import 'package:stream_alerts/util/result_dialog.dart';

class HomeDetailView extends StatefulWidget {
  const HomeDetailView({Key? key, required this.controller}) : super(key: key);
  final BottomBarController controller;

  @override
  State<HomeDetailView> createState() => _HomeDetailViewState();
}

class _HomeDetailViewState extends State<HomeDetailView> {
  final _title = 'Detail Page';

  void fetchService(Results data) {
    //
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              ResultDialog((val) {
                fetchService(val);
              }, context);
            },
          ),
        ],
      ),
    );
  }
}

enum Results { ok, fail }
