import 'dart:math';

import 'package:flutter/material.dart';

class ResponsiveGrid extends StatelessWidget {
  const ResponsiveGrid({
    required this.children,
    required this.width,
    required this.height,
    required this.horizontalInsets,
    required this.verticalInsets,
  });

  final List<Widget> children;
  final double width;
  final double height;
  final double horizontalInsets;
  final double verticalInsets;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final maxWidth = constraints.maxWidth - 8;
        final crossAxisCount = min(
            (maxWidth + horizontalInsets) ~/ (width + horizontalInsets),
            children.length);
        final padding = maxWidth -
            (width + horizontalInsets) * crossAxisCount +
            horizontalInsets;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: padding / 2 + 4),
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            childAspectRatio: width / height,
            crossAxisSpacing: horizontalInsets,
            mainAxisSpacing: verticalInsets,
            crossAxisCount: crossAxisCount,
            children: children,
          ),
        );
      },
    );
  }
}
