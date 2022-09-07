import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'views/home/home_view.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const AppClockIn(),
  ));
}

class AppClockIn extends StatelessWidget {
  const AppClockIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
