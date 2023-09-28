import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/helpers/app_text_style.dart';
import 'package:my_portfolio/helpers/colors.dart';
import 'package:my_portfolio/helpers/responsivelayout.dart';

class MyPortfolio extends StatefulWidget {
  MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  final onHoverEffect = Matrix4.identity()..scale(1.0);
  List images = <String>[
    'assets/images/Wallpaper-in-WhatsApp-chat-background.jpg',
    'assets/images/download.jpeg',
    'assets/images/yoga.jpg',
    'assets/images/online.jpg',
  ];
  var hoveredindex;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Responsive(
          color: AppColors.bgColor2,
          paddingWidth: size.width*0.1,
          mobile: Expanded(
            child: SingleChildScrollView(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                projectText(),
                30.verticalSpace,
                buildgridView(),
              ]),
            ),
          ),
          desktop: Expanded(
            child: SingleChildScrollView(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                projectText(),
                30.verticalSpace,
                buildgridView(),
                20.verticalSpace
              ]),
            ),
          )),
    );
  }

  GridView buildgridView() {
    return GridView.builder(
        itemCount: images.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 240,
            mainAxisSpacing: 24,
            crossAxisSpacing: 24,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          var image = images[index];
          return FadeInUpBig(
            duration: Duration(milliseconds: 1600),
            child: InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  if (value) {
                    hoveredindex = index;
                  } else {
                    hoveredindex = null;
                  }
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.fill)),
                  ),
                  Visibility(
                    visible: index == hoveredindex,
                    child: AnimatedContainer(
                      curve: Curves.easeIn,
                      transform: index == hoveredindex ? onHoverEffect : null,
                      duration: Duration(milliseconds: 600),
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [
                              AppColors.themeColor.withOpacity(1.0),
                              AppColors.themeColor.withOpacity(0.9),
                              AppColors.themeColor.withOpacity(0.8),
                              AppColors.themeColor.withOpacity(0.6),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Projets Details',
                            style: AppTextStyles.montserratStyle(
                                color: Colors.black87, fontSize: 20),
                          ),
                          10.verticalSpace,
                          Text(
                            "This project demonstrates my technical proficiency in Flutter.Whether on a mobile device or a web browser, users will enjoy a cohesive and delightful WhatsApp experience, with MVVM architecture and GetX state management.",
                            style: AppTextStyles.normalStyle(
                              color: Colors.white,
                              fontSize: Responsive.isMobile(context) ? 10 : 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          // 8.verticalSpace,
                          // CircleAvatar(
                          //   maxRadius: 20,
                          //   backgroundColor: Colors.white,
                          //   child: Image.asset(
                          //     'assets/images/share.png',
                          //     width: 20,
                          //     height: 20,
                          //     fit: BoxFit.fill,
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class projectText extends StatelessWidget {
  const projectText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: Duration(milliseconds: 1600),
      child: RichText(
        text: TextSpan(
            text: 'Latest  ',
            style: AppTextStyles.headingStyles(fontSize: 30),
            children: [
              TextSpan(
                  text: 'Projects',
                  style: AppTextStyles.headingStyles(
                      color: AppColors.robinEdgeBlue, fontSize: 30))
            ]),
      ),
    );
  }
}
