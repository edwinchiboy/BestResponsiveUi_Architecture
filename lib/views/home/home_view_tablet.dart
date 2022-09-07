import 'package:app_clock_in_ontrac/Widgets/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class HomeViewTablet extends StatelessWidget {
  const HomeViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    var children = [
      Expanded(child: Container()),
      AppDrawer(),
    ];
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.portrait
          ? Column(
              children: children,
            )
          : Row(
              children: children.reversed.toList(),
            ),
    );
  }
}
