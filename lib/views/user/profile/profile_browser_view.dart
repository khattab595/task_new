import 'package:flutter/material.dart';
import 'package:the_business_square/data/models/auth/Data.dart';
import 'package:the_business_square/views/user/profile/widget/list_post_user_browser.dart';
import 'package:the_business_square/views/user/profile/widget/profile_browser_header_widet.dart';

class ProfileBrowserView extends StatelessWidget {
  final UserData userData;

  ProfileBrowserView({super.key, required this.userData});

  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProfileBrowserHeaderWidget(userData: userData),
          Expanded(child: ListPostUserBrowser(userId: userData.id!)),
        ],
      ),
    );
  }
}
