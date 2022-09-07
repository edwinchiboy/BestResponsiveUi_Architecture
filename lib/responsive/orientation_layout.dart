import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class OrientationLayout extends StatelessWidget {
  final Widget? landScape;
  final Widget? portrait;
  const OrientationLayout({super.key, this.landScape, this.portrait});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      return landScape ?? portrait!;
    }
    return portrait!;
  }
}
