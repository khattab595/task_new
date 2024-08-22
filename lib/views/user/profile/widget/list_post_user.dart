// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:the_business_square/shared/api_client/endpoints.dart';
// import 'package:the_business_square/shared/theme/assets.dart';
// import 'package:the_business_square/views/widgets/custom_navigate.dart';
// import '../../../../logic/core/settings/settings_cubit.dart';
// import '../../../../logic/posts/delete_posts/delete_post_bloc.dart';
// import '../../../../logic/posts/delete_posts/delete_post_state.dart';
// import '../../../../logic/posts/get_posts_user/get_posts_user_bloc.dart';
// import '../../../../logic/posts/get_posts_user/get_posts_user_state.dart';
// import '../../../../logic/profile/get_profile//profile_bloc.dart';
// import '../../../../shared/cache/storage.dart';
// import '../../../../shared/localization/trans.dart';
// import '../../../../shared/theme/text_theme.dart';
// import '../../../widgets/custom_toast_app.dart';
// import '../../../widgets/image_builder.dart';
// import '../../../widgets/loading/loading.dart';
// import '../../home/home_details.dart';

// class ListPostUser extends StatelessWidget {
//   const ListPostUser({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<GetPostsUserBloc, GetPostsUserState>(
//       builder: (context, state) {
//         return state.maybeWhen(
//           orElse: () {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 50),
//                 SvgPicture.asset(KAssets.noTime, width: 230, height: 180),
//                 SizedBox(height: 20),
//                 Text(Tr.get.no_posts, style: KTextStyle.of(context).reBody),
//               ],
//             );
//           },
//           success: () {
//             return posts.data!.isEmpty
//                 ? Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(height: 50),
//                       SvgPicture.asset(KAssets.noTime, width: 230, height: 180),
//                       SizedBox(height: 20),
//                       Text(Tr.get.no_posts, style: KTextStyle.of(context).reBody),
//                     ],
//                   )
//                 : ListView.builder(
//                     itemCount: posts.data?.length ?? 0,
//                     itemBuilder: (context, index) {
//                       var post = posts.data!;

//                       return Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                         child: InkWell(
//                           onTap: () {
//                             navigateTo(
//                                 context,
//                                 HomeDetails(
//                                   postData: post[index],
//                                 ));
//                           },
//                           child: Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(10),
//                               boxShadow: [
//                                 BoxShadow(color: Colors.grey.withOpacity(.1), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 2)),
//                               ],
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(5.0),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Expanded(
//                                     child: Column(
//                                       mainAxisAlignment: MainAxisAlignment.start,
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           SettingsBloc.of(context).locale == Locale('en') ? post[index].category!.nameEn.toString() : post[index].category!.nameAr.toString(),
//                                           style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//                                         ),
//                                         const SizedBox(height: 5),
//                                         textAndIcon(
//                                           text: " ${post[index].startDate!.toString()}  -- ${post[index].endDate!.toString()}",
//                                           icon: Icons.access_time_outlined,
//                                         ),
//                                         textAndIcon(text: post[index].country!.toString(), icon: Icons.location_on_outlined),
//                                         textAndIcon(text: post[index].title!.toString(), icon: Icons.person_sharp),
//                                       ],
//                                     ),
//                                   ),
//                                   post[index].image == null
//                                       ? Container(
//                                           width: 80,
//                                           height: 100,
//                                           child: SvgPicture.asset(
//                                             KAssets.noImage,
//                                           ))
//                                       : kBuildCircleImage("${KEndPoints.baseUrlStorage}${post[index].image.toString()}", width: 79, height: 82),
//                                   post[index].user!.id == KStorage.i.getUser!.id!
//                                       ? PopupMenuButton<int>(
//                                           icon: Icon(
//                                             Icons.adaptive.more,
//                                             color: Colors.grey,
//                                             size: 20,
//                                           ),
//                                           itemBuilder: (context) => [
//                                             PopupMenuItem(
//                                               value: 1,
//                                               child: BlocConsumer<DeletePostBloc, DeletePostState>(
//                                                 listener: (context, state) {
//                                                   state.whenOrNull(
//                                                     success: () {
//                                                       KToast(message: Tr.get.deleted_successfully, state: ToastStates.SUCCESS);
//                                                       GetPostsUserBloc.of(context).fetchPostsUserById(ProfileBloc.of(context).user!.id!);
//                                                       Navigator.pop(context);
//                                                     },
//                                                     error: (error) {},
//                                                   );
//                                                 },
//                                                 builder: (context, state) {
//                                                   return InkWell(
//                                                     onTap: () {
//                                                       DeletePostBloc.of(context).deletePosts(post[index].id!);
//                                                     },
//                                                     child: Row(
//                                                       children: [
//                                                         Icon(Icons.delete, color: Colors.grey),
//                                                         SizedBox(
//                                                           width: 10,
//                                                         ),
//                                                         Text(
//                                                           Tr.get.delete_post,
//                                                         )
//                                                       ],
//                                                     ),
//                                                   );
//                                                 },
//                                               ),
//                                             ),
//                                           ],
//                                           offset: Offset(0, 30),
//                                           color: Colors.white,
//                                           elevation: 30,
//                                         )

//                                       : SizedBox(),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   );
//           },
//           loading: () {
//             return Padding(
//               padding: const EdgeInsets.only(top: 150),
//               child: CircularLoaderWidget(),
//             );
//           },
//         );
//       },
//     );
//   }

//   textAndIcon({required String text, required IconData icon}) {
//     return Padding(
//       padding: const EdgeInsets.all(2.0),
//       child: Row(
//         children: [
//           Icon(icon, color: Colors.grey, size: 15),
//           Expanded(
//               child: Text(
//             text,
//             style: const TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),
//             overflow: TextOverflow.ellipsis,
//             maxLines: 1,
//           )),
//         ],
//       ),
//     );
//   }
// }
