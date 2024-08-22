import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_business_square/shared/theme/assets.dart';
import 'package:the_business_square/views/user/home/widget/list_post_data.dart';

import '../../../../di/injection_container.dart';
import '../../../../logic/posts/get_posts_user/get_posts_user_bloc.dart';
import '../../../../logic/posts/get_posts_user/get_posts_user_state.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/text_theme.dart';
import '../../../widgets/load_more_wrapper.dart';
import '../../../widgets/loading/loading.dart';

class ListPostUserBrowser extends StatelessWidget {
  const ListPostUserBrowser({Key? key, required this.userId}) : super(key: key);
  final int? userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetPostsUserBloc>()..fetchPostsUserById(userId),
      child: BlocBuilder<GetPostsUserBloc, GetPostsUserState>(
        builder: (context, state) {
          final posts = GetPostsUserBloc.of(context).postsResponse;

          if (state is GetPostsStateLoading)
            return Padding(padding: const EdgeInsets.only(top: 150), child: CircularLoaderWidget());
          else if (state is GetPostsStateError)
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                SvgPicture.asset(KAssets.noTime, width: 230, height: 180),
                SizedBox(height: 20),
                Text(Tr.get.no_posts, style: KTextStyle.of(context).reBody),
              ],
            );
          else
            return posts.data!.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      SvgPicture.asset(KAssets.noTime, width: 230, height: 180),
                      SizedBox(height: 20),
                      Text(Tr.get.no_posts, style: KTextStyle.of(context).reBody),
                    ],
                  )
                : LoadMoreWrapper(
                    crossAxisCount: 1,
                    isLoadingMore: false,
                    onLoadMore: () async {
                      await GetPostsUserBloc.of(context).fetchPostsUserById(userId, loadMore: true);
                    },
                    onRefresh: () async {
                      await GetPostsUserBloc.of(context).fetchPostsUserById(userId);
                    },
                    itemCount: posts.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      var post = posts.data!;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: PostListTile(post: post[index]),
                      );
                    },
                  );
        },
      ),
    );
  }
}
