import 'dart:async';

class BottomBarController {
  final StreamController<bool> _isBarStream = StreamController<bool>.broadcast();

  bool _isLastValue = false;
  void changeAppBarState({bool? value}) {
    _isLastValue = value ?? !_isLastValue;

    _isBarStream.add(_isLastValue);
  }

  Stream<bool> get barStream => _isBarStream.stream;
}
