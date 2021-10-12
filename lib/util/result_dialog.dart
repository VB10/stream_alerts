import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stream_alerts/features/detail/home_detail_view.dart';

class ResultDialog {
  final void Function(Results value) onComplete;
  final BuildContext context;

  ResultDialog(this.onComplete, this.context);

  void show() {
    showDialog(
      context: context,
      builder: (context) {
        return _body();
      },
    );
  }

  Column _body() {
    return Column(
      children: [
        _button(Results.ok.toString(), Results.ok),
        _button(Results.fail.toString(), Results.fail),
      ],
    );
  }

  Widget _button(String title, Results value) {
    return TextButton(
        onPressed: () {
          onComplete(Results.ok);
          Navigator.of(context).pop();
        },
        child: Text(title));
  }
}
