import 'package:flutter/services.dart';

void handleSizeChange(Size size) {
  final orientations = <DeviceOrientation>[];

  orientations.addAll([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  bool isSmall = size.shortestSide < 600 && size != Size.zero;

  if (!isSmall) {
    orientations.addAll([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }
  SystemChrome.setPreferredOrientations(orientations);
}

// /// AppState object.
// ui.FlutterView? _view;

// @override
// void didChangeDependencies() {
//   super.didChangeDependencies();
//   _view = View.maybeOf(context);
// }

// void didChangeMetrics() {
//   final ui.Display? display = _view?.display;
// }
