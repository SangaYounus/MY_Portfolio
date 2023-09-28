import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/colors.dart';

class AboutMeImageDesign extends StatefulWidget {
  const AboutMeImageDesign({super.key});

  @override
  State<AboutMeImageDesign> createState() => _AboutMeImageDesignState();
}

class _AboutMeImageDesignState extends State<AboutMeImageDesign>
    with SingleTickerProviderStateMixin {
  // late AnimationController _controller;
  // late Animation<Offset> _animation;
  // @override
  // void initState() {
  //   super.initState();

  //   _controller =
  //       AnimationController(vsync: this, duration: Duration(seconds: 3))
  //         ..repeat(reverse: true);
  //   _animation =
  //       Tween(begin: Offset(0, 0.09), end: Offset(0, 0)).animate(_controller);
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
            // boxShadow: [
            //   BoxShadow(
            //       color: AppColors.themeColor.withOpacity(0.3),
            //       spreadRadius: 15,
            //       blurRadius: 25)
            // ],
            gradient: LinearGradient(
              colors: [Color(0xff83407b), Color(0xff51e3e6)], // Gradient colors
              begin: Alignment.topLeft, // Gradient start point
              end: Alignment.bottomRight, // Gradient end point
            ),
          ),
          child: Positioned(
            bottom: 10,
            top: 20,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  radius: 0.9,

                  colors: [
                    Color(0xff83407b),
                    Color(0xff51e3e6)
                  ], // Gradient colors
                  // Gradient end point
                ),
              ),
              child: Container(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    'assets/images/linkedin-removebg-preview.png',
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
