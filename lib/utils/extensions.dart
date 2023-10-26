import 'package:flutter/material.dart';
import 'package:responsive_home/constants/breakpoints.dart';

extension BuildContextExtensions on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  bool get isLarge => width >= largeBreakpoint;
  bool get isSmall => width < smallBreakpoint;
  bool get isMeduim => width < largeBreakpoint && width >= smallBreakpoint;
  bool get inMeduimAndLarge => isMeduim || isLarge;
  bool get inMeduimAndSmall => isSmall || isMeduim;
  bool get inLargeAndSmall => isSmall || isLarge;
  bool get inLarge => isLarge;
  int get getGridViewCount {
    if (isSmall) {
      return 1;
    } else {
      return 2;
    }
  }
}
