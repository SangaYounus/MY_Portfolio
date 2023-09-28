import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/helpers/app_text_style.dart';
import 'package:my_portfolio/helpers/colors.dart';
import 'package:my_portfolio/helpers/responsivelayout.dart';
import 'package:my_portfolio/widgets/AboutMeImageDesign.dart';
import 'package:my_portfolio/widgets/ImageDesign.dart';
import 'package:my_portfolio/widgets/appButton.dart';

class AboutMe extends StatelessWidget {
  AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
      width: size.width,
      alignment: Alignment.center,
      color: AppColors.bgColor,
      // padding: EdgeInsets.symmetric(
      //     vertical: size.height * 0.18, horizontal:paddingWidth),
      child: Responsive(
        color: AppColors.bgColor2,
        mobile: Column(
          children: [
            AboutMeContents(
              size: size,
            ),
            // 20.verticalSpace,
            FadeInRight(
                duration: Duration(milliseconds: 1600),
                child: AboutMeImageDesign()),
          ],
        ),
        desktop: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 10.horizontalSpace,
            FadeInRight(
                duration: Duration(milliseconds: 1600),
                child: AboutMeImageDesign()),
            22.verticalSpace,
            10.horizontalSpace,
            AboutMeContents(
              size: size,
            )
          ],
        ),
        paddingWidth: size.width * 0.1,
      ),
    ));
  }
}

class AboutMeContents extends StatelessWidget {
  AboutMeContents({
    required this.size,
    super.key,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInRight(
            duration: Duration(milliseconds: 1600),
            child: RichText(
              text: TextSpan(
                  text: 'About  ',
                  style: AppTextStyles.headingStyles(fontSize: 30),
                  children: [
                    TextSpan(
                        text: 'Me',
                        style: AppTextStyles.headingStyles(
                            color: AppColors.robinEdgeBlue, fontSize: 30))
                  ]),
            ),
          ),
          5.verticalSpace,
          FadeInLeft(
            duration: Duration(milliseconds: 1600),
            child: Text(
              'Flutter Frontened Developer!',
              style: AppTextStyles.montserratStyle(color: Colors.white),
            ),
          ),
          5.verticalSpace,
          FadeInLeft(
            duration: Duration(milliseconds: 1600),
            child: SizedBox(
              width: Responsive.isDesktop(context) ? size.width * 0.5 : null,
              child: Text(
                "=> I am a passionate Flutter front-end app and web developer with a strong focus on user experience.\n=> With one year of hands-on experience in this dynamic field, I have honed my skills to create engaging and user-friendly applications for both mobile and web platforms.\n=> My journey in Flutter has been marked by a commitment to crafting clean, readable, and visually appealing code."
                "\n=> My expertise extends to state management with Flutter GetX and Provider, as well as implementing MVVM architecture to ensure scalable and maintainable code."
                "\n=> My mission is to blend my creative flair with technical to deliver seamless and pleasing user experiences. With a foundation built on one year of real-world challenges and solutions, I am excited to continue my journey in creating innovative and user-centric applications in the world of Flutter.",
                style: AppTextStyles.normalStyle(),
              ),
            ),
          ),
          10.verticalSpace,
          FadeInUp(
              duration: Duration(milliseconds: 1800),
              child: AppButton(onTap: () {}, txt: 'Read More'))
        ],
      ),
    );
  }
}
