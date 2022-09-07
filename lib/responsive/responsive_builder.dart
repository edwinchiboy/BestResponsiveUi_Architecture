import 'package:app_clock_in_ontrac/responsive/sizing_information.dart';
import 'package:app_clock_in_ontrac/utils/ui_utils.dart';
import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation)? builder;
  const ResponsiveBuilder({
    super.key,
    this.builder,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxConstraints) {
      var sizingInformation = SizingInformation(
          //orientation: mediaQuery.orientation,
          deviceScreentype: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize:
              Size(boxConstraints.maxWidth, boxConstraints.maxHeight));

      return builder!(context, sizingInformation);
    });
  }
}
