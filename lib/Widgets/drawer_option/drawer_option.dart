import 'package:app_clock_in_ontrac/responsive/orientation_layout.dart';
import 'package:app_clock_in_ontrac/responsive/screen_type_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'drawer_option_mobile.dart';
import 'drawer_option_tablet.dart';

class DrawerOption extends StatelessWidget {
  final String? title;
  final IconData? iconData;
  const DrawerOption({super.key, this.title, this.iconData});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        landScape: DrawerOptionMobileLandScape(
          iconData: iconData!,
          title: title,
        ),
        portrait: DrawerOptionMobilePortrait(iconData: iconData!, title: title),
      ),
      tablet: OrientationLayout(
        landScape:
            DrawerOptionMobilePortrait(iconData: iconData!, title: title),
        portrait: DrawerOptionTabletPortrait(iconData: iconData!, title: title),
      ),
    );
  }
}
