import 'package:flutter/material.dart';
import 'package:the_business_square/views/user/create_ad/widget/list_category.dart';

import '../../../shared/localization/trans.dart';
import '../auth/forget_password/forget_password_view.dart';

class SelectCategoryView extends StatelessWidget {
  const SelectCategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.paddingOf(context).top;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: topPadding + 20),
            BackWithTitle(title: Tr.get.choose_category),
            Expanded(child: const ListCategory()),
          ],
        ),
      ),
    );
  }
}
