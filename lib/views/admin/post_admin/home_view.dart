import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:the_business_square/shared/localization/trans.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import 'package:the_business_square/views/admin/post_admin/widget/listPosts.dart';
import 'package:the_business_square/views/user/auth/forget_password/forget_password_view.dart';

import '../../../logic/admin/admin_get_posts/admin_get_posts_bloc.dart';
import '../../../shared/theme/text_theme.dart';

class PostAdmin extends StatelessWidget {
  PostAdmin({Key? key, this.valueData}) : super(key: key);
  final AdminPostsStatus? valueData;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final topPad = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: Center(
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: [
                  SvgPicture.asset("assets/image/shape_ad_post.svg", width: width),
                  Positioned(
                    top: topPad + 30,
                    width: width,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
                      child: BackWithTitle(title: Tr.get.post),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: TabBar(
                  indicatorColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  dividerColor: Colors.transparent,
                  isScrollable: true,
                  indicator: const UnderlineTabIndicator(borderSide: BorderSide(color: KColors.accentColorD, width: 2)),
                  labelStyle: KTextStyle.of(context).title.copyWith(fontSize: 20, color: KColors.accentColorD),
                  labelColor: KColors.accentColorD,
                  onTap: (value) {
                    if (value == 0) {
                      AdminGetPostsBloc.of(context).getPostsAdmin("waiting");
                    } else if (value == 1) {
                      AdminGetPostsBloc.of(context).getPostsAdmin("accepted");
                    } else if (value == 2) {
                      AdminGetPostsBloc.of(context).getPostsAdmin("rejected");
                    }
                  },
                  unselectedLabelStyle: KTextStyle.of(context).title.copyWith(fontSize: 18, color: Colors.grey),
                  tabs: [
                    Tab(child: Text(Tr.get.waiting.capitalizeFirst!)),
                    Tab(child: Text(Tr.get.accepted.capitalizeFirst!)),
                    Tab(child: Text(Tr.get.rejected.capitalizeFirst!)),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    ...AdminPostsStatus.values.map((e) => ListPosts(value: e)).toList(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum AdminPostsStatus { waiting, accepted, rejected }
