// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_business_square/shared/cache/storage.dart';
import 'package:the_business_square/shared/localization/trans.dart';

import '../../../logic/admin/logout/logout_bloc.dart';
import '../../../logic/core/settings/settings_cubit.dart';
import '../../../shared/theme/assets.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/text_theme.dart';
import '../../user/auth/login/login_view.dart';
import '../../widgets/custom_navigate.dart';
import '../../widgets/lalng_switch.dart';
import '../category/category.dart';
import '../coin_admin/admin_coin_view.dart';
import '../company/company_view.dart';
import '../nikname/nikname_view.dart';
import '../post_admin/home_view.dart';

class HomeAdminView extends StatelessWidget {
  HomeAdminView({Key? key}) : super(key: key);

  final List<Choice> choices = <Choice>[
    Choice(title: 'Posts', titleAr: 'المنشورات', icon: KAssets.posts, onTap: "posts"),
    Choice(title: 'Category', icon: KAssets.category_ad, onTap: "category", titleAr: 'الاقسام'),
    Choice(title: 'Company', icon: KAssets.company, onTap: "company", titleAr: 'الشركات'),
    Choice(title: 'Coins Manage', icon: KAssets.coinman, onTap: "coinManage", titleAr: 'ادارة العملات'),
    Choice(title: 'Nickname', icon: KAssets.nickname, onTap: "nickname", titleAr: 'اسماء الشهره'),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final topPad = MediaQuery.paddingOf(context).top;

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: KColors.accentColorD),
        padding: EdgeInsets.all(6),
        child: IconButton(
          onPressed: () async {
            await KStorage.i.logOut;
            await LogOutBloc.of(context).logout();
            navigateAndFinish(context, LoginView());
          },
          icon: Icon(Icons.logout, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SvgPicture.asset("assets/image/admin_home.svg", width: width),
                Positioned(
                  top: topPad + 40,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Tr.get.welcome_back,
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              KStorage.i.getUser?.name ?? "",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                          child: LangSwitch(),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 20,
                runSpacing: 20,
                direction: Axis.horizontal,
                children: choices.map(
                  (item) {
                    return InkWell(
                      onTap: () {
                        if (item.onTap == "posts") {
                          navigateTo(context, PostAdmin());
                        } else if (item.onTap == "nickname") {
                          navigateTo(context, NikNameView());
                        } else if (item.onTap == "company") {
                          navigateTo(context, CompanyView());
                        } else if (item.onTap == "category") {
                          navigateTo(context, CategoryView());
                        } else if (item.onTap == "coinManage") {
                          navigateTo(context, AdminCoinView());
                        }
                      },
                      child: Container(
                        height: (width - 100) / 2,
                        width: (width - 60) / 2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: KColors.accentColorD.withOpacity(.2), width: 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              item.icon,
                              width: 70,
                              height: 70,
                              color: KColors.accentColorD,
                            ),
                            SizedBox(height: 10),
                            Text(
                              SettingsBloc.of(context).locale == const Locale('en') ? item.title : item.titleAr,
                              style: KTextStyle.of(context).appBar.copyWith(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.titleAr, required this.icon, required this.onTap});
  final String title;
  final String titleAr;
  final String icon;
  final String onTap;
}
