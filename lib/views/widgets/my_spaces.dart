import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// VerticalSpace, VSpace.xs()　みたいに使う
/// (xs, s,m, l, xl) = (2, 4, 8, 16, 32)
class VSpace extends HookWidget {
  const VSpace(this.height);

  VSpace.xs() : height = Insets.xs;
  VSpace.s() : height = Insets.s;
  VSpace.m() : height = Insets.m;
  VSpace.l() : height = Insets.l;
  VSpace.xl() : height = Insets.xl;

  final double height;
  @override
  Widget build(BuildContext context) {
    // TODO(us):  scaleを変えたければここでwatchする.　ひとまず1で固定
    const scale = 1;
    return SizedBox(
      width: 0,
      height: height * scale,
    );
  }
}

/// HorizontalSpace, HSpace.xs()　みたいに使う
/// (xs, s,m, l, xl) = (2, 4, 8, 16, 32)
class HSpace extends HookWidget {
  const HSpace(this.width);
  HSpace.xs() : width = Insets.xs;
  HSpace.s() : width = Insets.s;
  HSpace.m() : width = Insets.m;
  HSpace.l() : width = Insets.l;
  HSpace.xl() : width = Insets.xl;

  final double width;
  @override
  Widget build(BuildContext context) {
    // TODO(us):  scaleを変えたければここでwatchする.　ひとまず1で固定
    const scale = 1;
    return SizedBox(
      width: width * scale,
      height: 0,
    );
  }
}

// ignore: avoid_classes_with_only_static_members
class Insets {
  static double get xs => 2;
  static double get s => 4;
  static double get m => 8;
  static double get l => 16;
  static double get xl => 32;
}
