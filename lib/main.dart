import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'features/home_tab/home_tab_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeTabView(),
    );
  }
}
