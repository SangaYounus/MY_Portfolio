import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_portfolio/helpers/app_text_style.dart';
import 'package:my_portfolio/helpers/colors.dart';
import 'package:my_portfolio/helpers/responsivelayout.dart';
import 'package:my_portfolio/widgets/appButton.dart';

class MyServices extends StatefulWidget {
  const MyServices({super.key});

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isweb = false, isUx = false;
  final OnHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final OnHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Responsive(
        color: AppColors.bgColor,
        paddingWidth: size.width * 0.04,
        mobile: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ServicesText(),
            17.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isApp = value;
                      });
                    },
                    child: MyServicesContainer(
                        hover: isApp,
                        img: 'assets/images/coding.png',
                        txt1: 'App Development',
                        txt2:
                            "I specialize in creating high-quality, cross-platform mobile applications using Flutter.I craft apps that are not only visually appealing but also efficient and responsive."),
                  ),
                  20.verticalSpace,
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isweb = value;
                      });
                    },
                    child: MyServicesContainer(
                      hover: isweb,
                      img: 'assets/images/coding.png',
                      txt1: 'Web Development',
                      txt2:
                          "My expertise extends to web development using Flutter, ensuring that your web applications are as functional and aesthetically pleasing as their mobile counterparts.",
                    ),
                  ),
                  20.verticalSpace,
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isUx = value;
                      });
                    },
                    child: MyServicesContainer(
                      hover: isUx,
                      img: 'assets/images/brush-stroke.png',
                      txt1: 'UI/UX Design',
                      txt2:
                          " User experience is at the heart of my design philosophy. I prioritize creating intuitive and visually captivating user interfaces that engage and retain users.",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        desktop: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ServicesText(),
            17.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isApp = value;
                    });
                  },
                  child: MyServicesContainer(
                      hover: isApp,
                      img: 'assets/images/coding.png',
                      txt1: 'App Development',
                      txt2:
                          "I specialize in creating high-quality, cross-platform mobile applications using Flutter.I craft apps that are not only visually appealing but also efficient and responsive."),
                ),
                15.horizontalSpace,
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isweb = value;
                    });
                  },
                  child: MyServicesContainer(
                    hover: isweb,
                    img: 'assets/images/coding.png',
                    txt1: 'Web Development',
                    txt2:
                        "My expertise extends to web development using Flutter, ensuring that your web applications are as functional and aesthetically pleasing as their mobile counterparts.",
                  ),
                ),
                15.horizontalSpace,
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isUx = value;
                    });
                  },
                  child: MyServicesContainer(
                    hover: isUx,
                    img: 'assets/images/brush-stroke.png',
                    txt1: 'UI/UX Design',
                    txt2:
                        " User experience is at the heart of my design philosophy. I prioritize creating intuitive and visually captivating user interfaces that engage and retain users.",
                  ),
                ),
              ],
            )
          ],
        ),
        tablet: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ServicesText(),
            17.verticalSpace,
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isApp = value;
                    });
                  },
                  child: MyServicesContainer(
                      hover: isApp,
                      img: 'assets/images/coding.png',
                      txt1: 'App Development',
                      txt2:
                          "I specialize in creating high-quality, cross-platform mobile applications using Flutter.I craft apps that are not only visually appealing but also efficient and responsive."),
                ),
                15.horizontalSpace,
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isweb = value;
                    });
                  },
                  child: MyServicesContainer(
                    hover: isweb,
                    img: 'assets/images/coding.png',
                    txt1: 'Web Development',
                    txt2:
                        "My expertise extends to web development using Flutter, ensuring that your web applications are as functional and aesthetically pleasing as their mobile counterparts.",
                  ),
                ),
                15.horizontalSpace,
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isUx = value;
                    });
                  },
                  child: MyServicesContainer(
                    hover: isUx,
                    img: 'assets/images/brush-stroke.png',
                    txt1: 'UI/UX Design',
                    txt2:
                        " User experience is at the heart of my design philosophy. I prioritize creating intuitive and visually captivating user interfaces that engage and retain users.",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer MyServicesContainer({
    required String txt1,
    required String txt2,
    required String img,
    required bool hover,
  }) {
    return AnimatedContainer(
      transform: hover ? OnHoverActive : OnHoverRemove,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      duration: Duration(milliseconds: 600),
      height: hover
          ? Responsive.isMobile(context)
              ? 360
              : 370
          : 350,
      width: hover
          ? Responsive.isMobile(context)
              ? 330
              : 340
          //desktop
          : 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.bgColor2,
          border:
              hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                spreadRadius: 4.0,
                blurRadius: 4.5,
                offset: Offset(3.4, 4.7))
          ]),
      child: Column(
        children: [
          Image.asset(
            img,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          20.verticalSpace,
          Text(
            txt1,
            style: AppTextStyles.montserratStyle(
                color: Colors.white,
                fontSize: Responsive.isMobile(context) ? 15 : 22),
          ),
          12.verticalSpace,
          Text(
            txt2,
            style: AppTextStyles.normalStyle(
                color: Colors.white,
                fontSize: Responsive.isMobile(context) ? 12 : 15),
            textAlign: TextAlign.center,
          ),
          12.verticalSpace,
          AppButton(onTap: () {}, txt: "Read More"),
        ],
      ),
    );
  }
}

class ServicesText extends StatelessWidget {
  const ServicesText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: Duration(milliseconds: 1600),
      child: RichText(
        text: TextSpan(
            text: 'My  ',
            style: AppTextStyles.headingStyles(fontSize: 30),
            children: [
              TextSpan(
                  text: 'Services',
                  style: AppTextStyles.headingStyles(
                      color: AppColors.robinEdgeBlue, fontSize: 30))
            ]),
      ),
    );
  }
}
