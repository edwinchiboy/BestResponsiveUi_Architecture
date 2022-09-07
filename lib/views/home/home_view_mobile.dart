import 'package:flutter/material.dart';

import '../../Widgets/app_drawer/app_drawer.dart';

class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  HomeMobilePortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                )),
          )
        ],
      ),
    );
  }
}

class HomeMobileLandScape extends StatelessWidget {
  const HomeMobileLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const AppDrawer(),
        ],
      ),
    );
  }
}
