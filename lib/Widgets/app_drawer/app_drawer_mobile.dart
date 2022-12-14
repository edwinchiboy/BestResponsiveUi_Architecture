import 'package:app_clock_in_ontrac/Widgets/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class AppDrawerMobile extends StatelessWidget {
  const AppDrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
      width: orientation == Orientation.portrait ? 250 : 100,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 16,
          color: Colors.black12,
        )
      ]),
      child: Column(
        children: AppDrawer.getDrawerOptions(),
      ),
    );
  }
}
