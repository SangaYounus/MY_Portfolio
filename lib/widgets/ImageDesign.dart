import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/colors.dart';
import 'package:my_portfolio/helpers/responsivelayout.dart';

class ImageDesign extends StatefulWidget {
  const ImageDesign({super.key});

  @override
  State<ImageDesign> createState() => _ImageDesignState();
}

class _ImageDesignState extends State<ImageDesign>
    with SingleTickerProviderStateMixin {
  bool _isContainerVisible = false;
  late AnimationController _controller;
  late Animation<Offset> _animation;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      updateSize();
    });
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat(reverse: true);
    _animation =
        Tween(begin: Offset(0, 0.09), end: Offset(0, 0)).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  updateSize() {
    setState(() {
      _isContainerVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final res_width = MediaQuery.of(context).size.width;
    final res_height = MediaQuery.of(context).size.height;
    return AnimatedContainer(
      height: _isContainerVisible
          ? Responsive.isMobile(context)
              ? res_width * 0.5
              : res_width * 0.3
          : 0.0,
      width: _isContainerVisible
          ? Responsive.isMobile(context)
              ? res_width * 0.5
              : res_width * 0.3
          : 0.0,
      // padding: EdgeInsets.symmetric(horizontal: 25),
      duration: Duration(seconds: 1),
      curve: Curves.easeOut,
      child: SlideTransition(
        position: _animation,
        child: Stack(
          children: [
            Container(
              width: Responsive.isMobile(context) ? 350 : 300,
              height: Responsive.isMobile(context) ? 350 : 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.themeColor.withOpacity(0.3),
                      spreadRadius: 15,
                      blurRadius: 25)
                ],
                gradient: LinearGradient(
                  colors: [
                    Color(0xff83407b),
                    Color(0xff51e3e6)
                  ], // Gradient colors
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
        ),
      ),
    );
  }
}
