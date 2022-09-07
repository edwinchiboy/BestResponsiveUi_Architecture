import 'package:app_clock_in_ontrac/enums/device_screen_type.dart';
import 'package:flutter/material.dart';

class SizingInformation {
  //final Orientation? orientation;
  final DeviceScreentype? deviceScreentype;
  final Size? screenSize;
  final Size? localWidgetSize;
  SizingInformation(
      {
      //this.orientation,
      this.deviceScreentype,
      this.screenSize,
      this.localWidgetSize});

  @override
  String toString() {
    return ' DeviceType:$deviceScreentype ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}
