import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_business_square/data/models/posts/get_posts/Data.dart';
import 'package:the_business_square/extensions.dart';
import 'package:the_business_square/logic/get_posts/get_posts_bloc.dart';
import 'package:the_business_square/logic/get_posts/get_posts_state.dart';
import 'package:the_business_square/shared/error/failures.dart';
import 'package:the_business_square/shared/localization/trans.dart';
import 'package:the_business_square/shared/theme/assets.dart';
import 'package:the_business_square/shared/theme/text_theme.dart';
import 'package:the_business_square/views/widgets/custom_navigate.dart';

import '../../../../logic/posts/delete_posts/delete_post_bloc.dart';
import '../../../../logic/posts/delete_posts/delete_post_state.dart';
import '../../../../logic/posts/get_posts_user/get_posts_user_bloc.dart';
import '../../../../shared/api_client/endpoints.dart';
import '../../../../shared/cache/storage.dart';
import '../../../widgets/custom_toast_app.dart';
import '../../../widgets/image_builder.dart';
import '../../../widgets/load_more_wrapper.dart';
import '../../../widgets/loading/loading.dart';
import '../home_details.dart';

class ListPostData extends StatelessWidget {
  const ListPostData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPostsBloc, GetPostsState>(
      builder: (context, state) {
        return state.when(
          error: (error) => Center(child: Text(KFailure.toError(error))),
          initial: () {
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
          },
          loading: () {
            return Padding(
              padding: const EdgeInsets.only(top: 150),
              child: CircularLoaderWidget(),
            );
          },
          loadMore: () => PostsListView(items: GetPostsBloc.of(context).postsResponse.data ?? [], loadingMore: true),
          success: () => PostsListView(items: GetPostsBloc.of(context).postsResponse.data ?? [], loadingMore: false),
        );
      },
    );
  }
}

class TextAndIcon extends StatelessWidget {
  TextAndIcon({required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          Icon(icon, color: Color(0xaa004187), size: 17),
          SizedBox(width: 5),
          Text(
            text.capitalize,
            style: const TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w400),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}

class PostsListView extends StatelessWidget {
  const PostsListView({Key? key, required this.items, required this.loadingMore}) : super(key: key);
  final List<PostData> items;
  final bool loadingMore;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LoadMoreWrapper(
        crossAxisCount: 1,
        isLoadingMore: loadingMore,
        onLoadMore: () async {
          await GetPostsBloc.of(context).get_posts(loadMore: true);
        },
        onRefresh: () async {
          await GetPostsBloc.of(context).get_posts(loadMore: false);
        },
        itemCount: GetPostsBloc.of(context).postsResponse.data?.length ?? 0,
        itemBuilder: (context, index) {
          final post = GetPostsBloc.of(context).postsResponse.data ?? [];

          return PostListTile(post: post[index]);
        },
      ),
    );
  }
}

class PostListTile extends StatelessWidget {
  const PostListTile({super.key, required this.post});
  final PostData post;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateTo(context, HomeDetails(postData: post));
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(color: Color(0xffF5F6F7), borderRadius: BorderRadius.circular(10), border: Border.all(width: .5)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: post.image == null
                  ? Container(width: 65, height: 65, child: SvgPicture.asset(KAssets.noImage))
                  : kBuildCircleImage("${KEndPoints.baseUrlStorage}${post.image.toString()}", width: 65, height: 65),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          (Tr.isAr ? post.category!.nameAr.toString() : post.category!.nameEn.toString()),
                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: AlignmentDirectional.centerEnd,
                          child: TextAndIcon(text: (post.country!.toString() + "  "), icon: Icons.location_on_outlined),
                        ),
                      ),
                      post.user!.id == KStorage.i.getUser!.id!
                          ? PopupMenuButton<int>(
                              icon: Icon(Icons.adaptive.more, color: Color(0xff5C5C5C), size: 20),
                              offset: Offset(0, 0),
                              color: Colors.white,
                              elevation: 30,
                              surfaceTintColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  value: 1,
                                  child: BlocConsumer<DeletePostBloc, DeletePostState>(
                                    listener: (_, state) {
                                      final postBloc = GetPostsUserBloc.of(context);

                                      state.whenOrNull(
                                        success: () {
                                          KToast(message: Tr.get.deleted_successfully, state: ToastStates.SUCCESS);
                                          postBloc.fetchPostsUserById(KStorage.i.getUser?.id);
                                          Navigator.pop(context);
                                        },
                                        error: (error) {
                                          KToast(message: KFailure.toError(error), state: ToastStates.ERROR);
                                          Navigator.pop(context);
                                        },
                                      );
                                    },
                                    builder: (context, state) {
                                      return InkWell(
                                        onTap: () {
                                          DeletePostBloc.of(context).deletePosts(post.id!);
                                        },
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Icon(Icons.delete, color: Color(0xff004187)),
                                              decoration: BoxDecoration(color: Color(0x1a002036), shape: BoxShape.circle),
                                              padding: EdgeInsets.all(8),
                                            ),
                                            SizedBox(width: 10),
                                            Text(Tr.get.delete_post),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            )
                          : SizedBox(),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    post.title ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextAndIcon(
                    text: " ${post.startDate!.toString()}  |  ${post.startTime!.toString()}",
                    icon: Icons.access_time_outlined,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
