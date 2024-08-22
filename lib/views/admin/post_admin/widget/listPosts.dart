import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_business_square/views/user/home/widget/list_post_data.dart';

import '../../../../logic/admin/admin_get_posts/admin_get_posts_bloc.dart';
import '../../../../logic/admin/admin_get_posts/admin_get_posts_state.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/assets.dart';
import '../../../../shared/theme/text_theme.dart';
import '../../../widgets/loading/loading.dart';
import '../home_view.dart';

class ListPosts extends StatelessWidget {
  const ListPosts({Key? key, required this.value}) : super(key: key);
  final AdminPostsStatus value;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdminGetPostsBloc, AdminGetPostsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(orElse: () {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              SvgPicture.asset(KAssets.noData, width: 200, height: 150),
              SizedBox(height: 20),
              Text(Tr.get.no_posts, style: KTextStyle.of(context).reBody),
            ],
          );
        }, success: (posts) {
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
            itemCount: posts.data!.length,
            itemBuilder: (context, index) {
              var post = posts.data!;

              return PostListTile(post: post[index]);
            },
          );
        }, loading: () {
          return Padding(
            padding: const EdgeInsets.only(top: 150),
            child: CircularLoaderWidget(),
          );
        });
      },
    );
  }

  textAndIcon({required String text, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey, size: 15),
          Text(text, style: const TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }

  butContainer({required Color borderColor, required Color textColor, required Color bag, required Function()? onTap, required String text}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 116,
        height: 32,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bag,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: borderColor, width: 1.5),
        ),
        child: Text(text, style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
