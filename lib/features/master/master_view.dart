import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/navigation/router.gr.dart';
import '../../core/utils/constants.dart';

class MasterView extends StatelessWidget {
  const MasterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        Home(),
        Rest(),
        Checkout(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          extendBody: true,
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          backgroundColor: Colors.white,
          bottomNavigationBar: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              boxShadow: kElevationToShadow[3],
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Constants.white,
              selectedItemColor: Constants.mainColor,
              selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
              elevation: 5,
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home,
                    size: 25,
                    color: Constants.mainColor,
                  ),
                  icon: Icon(
                    Icons.home,
                    size: 25,
                    color: Constants.warmGreyTwo,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.food_bank_rounded,
                    size: 25,
                    color: Constants.mainColor,
                  ),
                  icon: Icon(
                    Icons.food_bank_rounded,
                    size: 25,
                    color: Constants.warmGreyTwo,
                  ),
                  label: 'Restaurants',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.shopping_cart,
                    size: 25,
                    color: Constants.mainColor,
                  ),
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 25,
                    color: Constants.warmGreyTwo,
                  ),
                  label: 'Checkout',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.person,
                    size: 25,
                    color: Constants.mainColor,
                  ),
                  icon: Icon(
                    Icons.person,
                    size: 25,
                    color: Constants.warmGreyTwo,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
