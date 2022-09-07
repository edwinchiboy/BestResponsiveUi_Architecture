import 'package:app_clock_in_ontrac/responsive/orientation_layout.dart';
import 'package:app_clock_in_ontrac/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';

import 'home_view_mobile.dart';
import 'home_view_tablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
        landScape: HomeMobileLandScape(),
      ),
      tablet: HomeViewTablet(),
    );
  }
}



// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveBuilder(
//       builder: (context, sizingInformation) {
//         return Scaffold(
//           body: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Container(
//                   margin:const EdgeInsets.all(50),
//                   height: 150,
//                   color: Colors.blue,
//                   child: ResponsiveBuilder(
//                     builder: (context, sizingInformation) {
//                       return Text(sizingInformation.toString());
//                     },
//                   ),
//                 ),
//                 Text(sizingInformation.toString()),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

