import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:the_business_square/shared/theme/colors.dart';

import '../../logic/core/settings/settings_cubit.dart';
import '../user/create_ad/select_category.dart';

//
// class NavBar extends StatefulWidget {
//   const NavBar({
//     Key? key,
//   }) : super(key: key);
//   @override
//   State<NavBar> createState() => _NavBar();
// }
//
// class _NavBar extends State<NavBar> {
//   int selected = 0;
//   var heart = false;
//   PageController controller = PageController();
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//   final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      extendBody: true,
//       key: _scaffoldkey,
//       bottomNavigationBar: AnimatedBottomNavigationBar(
//         height: 50,
//         icons: [Icons.home, Icons.chat, Icons.notifications, Icons.person],
//         blurEffect: true,
//         activeIndex: selected,
//         shadow: Shadow(color: KColors.of(context).shadow, blurRadius: 10),
//         backgroundColor: KColors.of(context).navBar,
//         gapLocation: GapLocation.center,
//         notchSmoothness: NotchSmoothness.defaultEdge,
//         onTap: (index) async {
//           controller.jumpToPage(index);
//           setState(() {
//             selected = index;
//           });
//         },
//         activeColor: KColors.of(context).selected,
//         inactiveColor: KColors.of(context).activeIcons,
//       ),
//
//       /// bottomNavigationBar: StylishBottomBar(
//       ///   backgroundColor: KColors.navbarL,
//       ///   items: [
//       ///     AnimatedBarItems(
//       ///       icon: SvgPicture.asset(KAssets.home, color: Colors.white),
//       ///       selectedIcon: SvgPicture.asset(KAssets.home),
//       ///       selectedColor: KColors.accentColorL,
//       ///       title: Text(''),
//       ///       unSelectedColor: Colors.white,
//       ///     ),
//       ///     AnimatedBarItems(
//       ///       icon: SvgPicture.asset(KAssets.chat, color: Colors.white),
//       ///       selectedIcon: SvgPicture.asset(KAssets.chat, color: KColors.accentColorL),
//       ///       selectedColor: KColors.accentColorL,
//       ///       title: Text(''),
//       ///       unSelectedColor: Colors.white,
//       ///     ),
//       ///     AnimatedBarItems(
//       ///       icon: SvgPicture.asset(KAssets.doutone, color: Colors.white),
//       ///       selectedIcon: SvgPicture.asset(KAssets.doutone, color: KColors.accentColorL),
//       ///       selectedColor: KColors.accentColorL,
//       ///       title: Text(''),
//       ///       unSelectedColor: Colors.white,
//       ///     ),
//       ///     AnimatedBarItems(
//       ///       icon: SvgPicture.asset(KAssets.profile, color: Colors.white),
//       ///       selectedIcon: SvgPicture.asset(KAssets.profile, color: KColors.accentColorL),
//       ///       selectedColor: KColors.accentColorL,
//       ///       title: Text(''),
//       ///       unSelectedColor: Colors.white,
//       ///     ),
//       ///   ],
//       ///   iconSize: 40,
//       ///   borderRadius: BorderRadius.circular(20),
//
//       ///   elevation: 1,
//
//       ///   barAnimation: BarAnimation.blink,
//       ///   iconStyle: IconStyle.Default,
//       ///   hasNotch: true, // fabLocation: StylishBarFabLocation.end, opacity: 0.3,
//       ///   currentIndex: selected ?? 0,
//       ///   onTap: (index) async {
//       ///     controller.jumpToPage(index!);
//       ///     setState(() {
//       ///       selected = index;
//       ///     });
//       ///   },
//       /// ),
//
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: KColors.accentColorL,
//         onPressed: () {
//           ///TODO SelectCategoryView
//           Get.to(() => const SelectCategoryView());
//         },
//         child: const Icon(Icons.add, color: Colors.white),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       body: PageView(
//         controller: controller,
//         children: [
//           HomeView(),
//          // HomeView(),
//           NotificationsView(),
//           NotificationsView(),
//           ProfileView(),
//         ],
//       ),
//     );
//   }
// }
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsBloc, SettingsState>(
      listener: (context, state) {},
      builder: (context, state) {
        SettingsBloc newsCubit = SettingsBloc.of(context);
        return Scaffold(
          backgroundColor: Colors.white,
          body: newsCubit.screens[newsCubit.currentIndex],
          floatingActionButton: newsCubit.currentIndex == 0
              ? FloatingActionButton(
                  backgroundColor: Color(0xff004187),
                  shape: CircleBorder(),
                  onPressed: () {
                    Get.to(() => const SelectCategoryView());
                  },
                  child: const Icon(Icons.add, color: KColors.accentColorD, size: 30),
                )
              : null,
          bottomNavigationBar: BottomNavigationBar(
            onTap: newsCubit.changeIndex,
            currentIndex: newsCubit.currentIndex,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            elevation: 24,
            backgroundColor: Colors.white,
            selectedLabelStyle: TextStyle(fontSize: 10),
            selectedItemColor: KColors.accentColorD,
            items: newsCubit.bottomItem,
          ),
        );
      },
    );
  }
}
