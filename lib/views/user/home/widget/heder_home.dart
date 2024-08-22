// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:the_business_square/shared/cache/storage.dart';
import 'package:the_business_square/views/user/live/lives_view.dart';
import 'package:the_business_square/views/widgets/custom_navigate.dart';

import '../../../../logic/profile/get_profile/profile_bloc.dart';
import '../../../../logic/profile/get_profile/profile_state.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/assets.dart';
import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/text_theme.dart';
import '../../coin/coin_view.dart';
import '../../search/search_view.dart';

class HeaderWidgetScreen extends StatelessWidget {
  const HeaderWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  Tr.get.welcome_back + " ${ProfileBloc.of(context).user?.name?.capitalizeFirst}",
                  style: KTextStyle.of(context).reAppBar.copyWith(fontSize: 18, color: Colors.black),
                ),
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, LivesGridView());
                },
                child: Icon(Icons.video_call_outlined),
              ),
              SizedBox(width: 16),
              InkWell(
                onTap: () {
                  Get.to(() => const SearchView());
                },
                child: Icon(Icons.search),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              SvgPicture.asset(KAssets.home_banner, width: width),
              Positioned(
                bottom: 20,
                left: 16,
                child: InkWell(
                  onTap: () {
                    navigateTo(context, CoinView());
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.add_circle_outline_rounded, color: KColors.accentColorD, size: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: BlocBuilder<ProfileBloc, ProfileState>(
                          builder: (context, state) {
                            return Text(
                              "${KStorage.i.getUser?.coins} ${Tr.get.points}",
                              style: KTextStyle.of(context).body.copyWith(color: KColors.accentColorD),
                            );
                          },
                        ),
                      ),
                      SvgPicture.asset(KAssets.coin, color: Colors.amber),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
