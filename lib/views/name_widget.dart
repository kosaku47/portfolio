import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 400) {
          return Text(
            'Kosaku Nakano',
            style: Theme.of(context).textTheme.headline4,
          );
        }
        return Text(
          'Kosaku Nakano',
          style: Theme.of(context).textTheme.headline3,
        );
      },
    );
  }
}
