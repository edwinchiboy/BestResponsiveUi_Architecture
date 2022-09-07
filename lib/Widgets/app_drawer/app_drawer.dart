import 'package:app_clock_in_ontrac/Widgets/app_drawer/app_drawer_mobile.dart';
import 'package:app_clock_in_ontrac/Widgets/drawer_option/drawer_option.dart';
import 'package:app_clock_in_ontrac/responsive/orientation_layout.dart';
import 'package:app_clock_in_ontrac/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';

import 'app_drawer_tablet.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: OrientationLayout(
        portrait: AppDrawerTabletPortrait(),
        landScape: AppDrawerTabletLandScape(),
      ),
    );
  }

  static List<Widget> getDrawerOptions() {
    return [
      const DrawerOption(
        title: "Images",
        iconData: Icons.image,
      ),
      const DrawerOption(
        title: "Reports",
        iconData: Icons.photo_filter,
      ),
      const DrawerOption(
        title: "Incidents",
        iconData: Icons.message,
      ),
      const DrawerOption(
        title: "Sewttings",
        iconData: Icons.settings,
      )
    ];
  }
}
