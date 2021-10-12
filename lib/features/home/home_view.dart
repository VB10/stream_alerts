import 'package:flutter/material.dart';
import 'package:stream_alerts/features/detail/home_detail_view.dart';
import 'package:stream_alerts/util/bottom_bar_controller.dart';

class HomeView extends StatefulWidget {
  final BottomBarController controller;
  const HomeView({Key? key, required this.controller}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _isFirstPage = true;
  @override
  void initState() {
    super.initState();

    widget.controller.barStream.listen((event) {
      _changePage(event);
    });
  }

  void _changePage(bool value) {
    _isFirstPage = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: AnimatedCrossFade(
          firstChild: Container(color: Colors.grey),
          secondChild: HomeDetailView(controller: widget.controller),
          crossFadeState: _isFirstPage ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1)),
    );
  }
}
