import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_business_square/shared/localization/trans.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import 'package:the_business_square/views/user/profile/widget/profile_header_widet.dart';

import '../../../shared/theme/assets.dart';
import '../../../shared/theme/helper.dart';
import '../create_ad/select_category.dart';

class ProfileView extends StatelessWidget {
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.paddingOf(context).top;

    return Column(
      children: [
        SizedBox(height: topPadding + 10),
        Row(
          children: [
            SizedBox(width: KHelper.hPadding),
            Image.asset(KAssets.logo, height: 26),
            SizedBox(width: KHelper.hPadding),
            Text(
              Tr.get.profile,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Spacer(),
            RawMaterialButton(
              shape: RoundedRectangleBorder(side: BorderSide(width: 1, color: KColors.accentColorD), borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Get.to(() => const SelectCategoryView());
              },
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 5),
                  Text(
                    Tr.get.create_ad,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: KColors.accentColorD),
                  )
                ],
              ),
            ),
            SizedBox(width: KHelper.hPadding)
          ],
        ),
        ProfileBodyWidget(),
      ],
    );
  }
}
