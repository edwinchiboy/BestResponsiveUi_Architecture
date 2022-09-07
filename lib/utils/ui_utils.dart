import 'package:app_clock_in_ontrac/enums/device_screen_type.dart';
import 'package:flutter/cupertino.dart';

// DeviceScreentype getDeviceType(MediaQueryData mediaQuery) {
//   var orientation = mediaQuery.orientation;
//   double deviceWidth = 0;
//   if (orientation == Orientation.landscape) {
//     deviceWidth = mediaQuery.size.height;
//   } else {
//     deviceWidth = mediaQuery.size.width;
//   }
//   if (deviceWidth > 950) {
//     return DeviceScreentype.desktop;
//   }
//   if (deviceWidth > 600) {
//     return DeviceScreentype.tablet;
//   }
//   return DeviceScreentype.mobile;
// }
DeviceScreentype getDeviceType(MediaQueryData mediaQuery) {
  double deviceWidth = mediaQuery.size.shortestSide;

  if (deviceWidth > 950) {
    return DeviceScreentype.desktop;
  }
  if (deviceWidth > 600) {
    return DeviceScreentype.tablet;
  }
  return DeviceScreentype.mobile;
}
