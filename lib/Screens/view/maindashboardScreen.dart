import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Screens/view/Aboutme.dart';
import 'package:my_portfolio/Screens/view/Footerclass.dart';
import 'package:my_portfolio/Screens/view/Services.dart';
import 'package:my_portfolio/Screens/view/contactme.dart';
import 'package:my_portfolio/Screens/view/home.dart';
import 'package:my_portfolio/Screens/view/myportfolio.dart';
import 'package:my_portfolio/helpers/app_text_style.dart';
import 'package:my_portfolio/helpers/colors.dart';
import 'package:my_portfolio/helpers/responsivelayout.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  void scrollto({required int index}) {
    _itemScrollController.jumpTo(index: index);
  }

  final onHoverEffect = Matrix4.identity()..scale(0.9);
  final menuItems = <String>[
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Contact',
  ];
  var menuindex = 0;
  final ScreenList = [
    HomeScreen(),
    AboutMe(),
    // 20.verticalSpace,
    MyServices(),
    // 10.verticalSpace,
    MyPortfolio(),
    // 20.verticalSpace,
    ContactMe(),
    FooterClass(),
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          titleSpacing: 30,
          toolbarHeight: 90,
          elevation: 0,
          backgroundColor: AppColors.bgColor,
          title: Responsive(
            paddingWidth: size.width * 0.1,
            color: AppColors.bgColor,
            mobile: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Portfolio",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
                SizedBox(
                    height: 30,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu_sharp,
                          size: 32,
                          color: AppColors.white,
                        )))
              ],
            ),
            desktop: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Portfolio",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
                SizedBox(
                  height: 30,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: menuItems.length,
                    separatorBuilder: (Context, child) => SizedBox(
                      width: 8,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          scrollto(index: index);
                        },
                        borderRadius: BorderRadius.circular(100),
                        onHover: (value) {
                          setState(() {
                            if (value) {
                              menuindex = index;
                            } else {
                              menuindex = 0;
                            }
                          });
                        },
                        child: buildNavBarAnimatedContainer(
                          index,
                          menuindex == index ? true : false,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            tablet: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Portfolio",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
                SizedBox(
                  height: 30,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: menuItems.length,
                    separatorBuilder: (Context, child) => SizedBox(
                      width: 8,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(100),
                        onHover: (value) {
                          setState(() {
                            if (value) {
                              menuindex = index;
                            } else {
                              menuindex = 0;
                            }
                          });
                        },
                        child: buildNavBarAnimatedContainer(
                          index,
                          menuindex == index ? true : false,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        body: ScrollablePositionedList.builder(
            itemCount: ScreenList.length,
            itemScrollController: _itemScrollController,
            itemBuilder: (context, index) {
              return ScreenList[index];
            }));
  }

  AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 80 : 75,
      duration: const Duration(milliseconds: 200),
      transform: hover ? onHoverEffect : null,
      child: Text(
        menuItems[index],
        style: AppTextStyles.headerTextStyle(
            color: hover ? AppColors.themeColor : AppColors.white),
      ),
    );
  }
}
