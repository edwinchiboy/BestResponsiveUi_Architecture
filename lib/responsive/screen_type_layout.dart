import 'package:app_clock_in_ontrac/enums/device_screen_type.dart';
import 'package:app_clock_in_ontrac/responsive/responsive_builder.dart';
import 'package:flutter/material.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? deskTop;
  const ScreenTypeLayout({super.key, this.mobile, this.tablet, this.deskTop});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreentype == DeviceScreentype.tablet) {
          if (tablet != null) {
            return tablet!;
          }
        }
        if (sizingInformation.deviceScreentype == DeviceScreentype.desktop) {
          if (deskTop != null) {
            return deskTop!;
          }
        }
        return mobile!;
      },
    );
  }
}
