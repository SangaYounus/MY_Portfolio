import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:my_portfolio/helpers/colors.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  final Color color;
  final double paddingWidth;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    required this.color,
    required this.paddingWidth,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    // if our width is more than 1100 then we consider it a desktop

    if (size.width >= 1100) {
      return Container(
          // height: size.height,
          width: size.width,
          alignment: Alignment.center,
          color: color,
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.18, horizontal:paddingWidth),
          child: desktop);
    }
    // if width is less than 1100 and more than 850 we consider it as a tablet
    else if (size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // or less than then we consider it  a mobile
    else {
      return Container(
        // height: size.height,
        width: size.width,
        alignment: Alignment.center,
        color: AppColors.bgColor,
        padding:
            EdgeInsets.symmetric(vertical: size.height * 0.05, horizontal: 18),
        child: mobile,
      );
    }
  }
}


// class ResponsiveLayoutBuilder extends StatelessWidget {
//   final Widget desktop;
//   final Widget mobile;
//    Widget tablet;
//   ResponsiveLayoutBuilder({
//     Key? key,
//     required this.desktop,
//     required this.mobile,
//      required this.tablet,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxWidth < 768) {
//           return Container(
//             // height: size.height,
//             width: size.width,
//             alignment: Alignment.center,
//             color: AppColors.bgColor,
//             padding: EdgeInsets.symmetric(
//                 vertical: 30, horizontal: size.width * 0.05),
//             child: mobile,
//           );
//         } else if (constraints.maxWidth < 1200) {
//           return Container(
//             // height: size.height,
//             width: size.width,
//             alignment: Alignment.center,
//             color: AppColors.bgColor,
//             padding: EdgeInsets.symmetric(
//                 vertical: 20, horizontal: size.width * 0.03),
//             child: tablet,
//           );
//         } else {
//           return Container(
//             // height: size.height,
//             width: size.width,
//             alignment: Alignment.center,
//             color: AppColors.bgColor,
//             padding: EdgeInsets.symmetric(
//                 vertical: 20, horizontal: size.width * 0.1),
//             child: desktop,
//           );
//         }
//       },
//     );
//   }
// }

// class ResponsiveLayoutBuilder extends StatelessWidget {
//   final Widget mobile;
//   final Widget? tablet;
//   final Widget desktop;

//   ResponsiveLayoutBuilder({
//     Key? key,
//     required this.mobile,
//     this.tablet,
//     required this.desktop,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         // Determine the current layout based on the maxWidth in constraints
//         if (constraints.maxWidth >= 1100) {
//           return desktop;
//         } else if (constraints.maxWidth >= 850 && tablet != null) {
//           return tablet!;
//         } else {
//           return mobile;
//         }
//       },
//     );
//   }
// }
