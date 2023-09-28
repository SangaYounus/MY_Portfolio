import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Screens/view/Aboutme.dart';
import 'package:my_portfolio/Screens/view/Footerclass.dart';
import 'package:my_portfolio/Screens/view/Services.dart';
import 'package:my_portfolio/Screens/view/contactme.dart';
import 'package:my_portfolio/Screens/view/myportfolio.dart';

import 'package:my_portfolio/helpers/app_assets.dart';
import 'package:my_portfolio/helpers/app_text_style.dart';
import 'package:my_portfolio/helpers/colors.dart';
import 'package:my_portfolio/helpers/responsivelayout.dart';
import 'package:my_portfolio/widgets/ImageDesign.dart';
import 'package:my_portfolio/widgets/appButton.dart';
import 'package:my_portfolio/widgets/buildSocialButton.dart';
import 'package:animate_do/animate_do.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Responsive(
      paddingWidth: size.width * 0.08,
      color: AppColors.bgColor,
      mobile: SingleChildScrollView(
        child: Column(
          children: [
            HomePersonalInfo(size: size),
            15.verticalSpace,
            ImageDesign(),
          ],
        ),
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          HomePersonalInfo(size: size),
          10.horizontalSpace,
          ImageDesign()
        ],
      ),
      // tablet: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Expanded(child: HomePersonalInfo(size: size)),
      //     ImageDesign()
      //   ],

      // SizedBox(
      //   height: 200,
      // ),
      // AboutMe(),
      // MyServices(),
      // MyPortfolio(),
      // ContactMe(),
      // FooterClass(),
    );
  }
}

class HomePersonalInfo extends StatelessWidget {
  const HomePersonalInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // animation do pkg
        FadeInDown(
          duration: Duration(milliseconds: 1200),
          child: Text(
            "Hello, it's me",
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        15.verticalSpace,
        FadeInRight(
          duration: Duration(milliseconds: 1400),
          child: Text(
            "MALEHA YOUNUS",
            style: AppTextStyles.headingStyles(color: Colors.white),
          ),
        ),
        15.verticalSpace,
        FadeInLeft(
          duration: Duration(milliseconds: 1400),
          child: Expanded(
            child: Row(
              children: [
                Text(
                  "And I'm a ",
                  style: AppTextStyles.montserratStyle(
                      color: Colors.white,
                      fontSize: Responsive.isMobile(context) ? 18 : 20),
                ),
                AnimatedTextKit(animatedTexts: [
                  TyperAnimatedText('Flutter',
                      // speed: Duration(milliseconds: 1000),
                      textStyle: AppTextStyles.montserratStyle(
                          fontSize: Responsive.isMobile(context) ? 18 : 20,
                          color: Colors.lightBlue))
                ]),
                AnimatedTextKit(animatedTexts: [
                  TyperAnimatedText(' Frontened',
                      // speed: Duration(milliseconds: 1000),
                      textStyle: AppTextStyles.montserratStyle(
                          fontSize: Responsive.isMobile(context) ? 18 : 20,
                          color: Colors.lightBlue))
                ]),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      ' Developer',
                      // speed: Duration(milliseconds: 1000),
                      textStyle: AppTextStyles.montserratStyle(
                          color: Colors.lightBlue,
                          fontSize: Responsive.isMobile(context) ? 18 : 20),
                    ),
                  ],
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ],
            ),
          ),
        ),

        15.verticalSpace,
        FadeInDown(
          duration: Duration(milliseconds: 1600),
          child: SizedBox(
            width: Responsive.isDesktop(context) ? size.width * 0.5 : null,
            child: Expanded(
              child: Text(
                'I am a passionate Flutter frontend developer with a keen eye for crafting visually stunning and highly functional mobile applications. With a strong foundation in Dart and Flutter, I specialize in creating delightful user experiences that seamlessly blend creativity with functionality. Additionally, my expertise extends to designing captivating user interfaces for web applications.',
                style: AppTextStyles.normalStyle(),
              ),
            ),
          ),
        ),
        20.verticalSpace,
        FadeInUp(
          duration: Duration(milliseconds: 1600),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildSocialButton(
                asset: AppAssets.facebook,
              ),
              5.horizontalSpace,
              buildSocialButton(
                asset: AppAssets.twitter,
              ),
              5.horizontalSpace,
              buildSocialButton(
                asset: AppAssets.linkedIn,
              ),
              5.horizontalSpace,
              buildSocialButton(
                asset: AppAssets.insta,
              ),
              5.horizontalSpace,
              buildSocialButton(
                asset: AppAssets.github,
              ),
            ],
          ),
        ),
        10.verticalSpace,
        FadeInUp(
          duration: Duration(milliseconds: 1800),
          child: AppButton(
            txt: 'Download CV',
            onTap: () {},
          ),
        )
      ],
    );
  }
}
