import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:the_business_square/shared/localization/trans.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import 'package:the_business_square/views/user/home/widget/photo_view.dart';
import 'package:the_business_square/views/widgets/custom_navigate.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../chat/view/widgets/chat_icon_btn.dart';
import '../../../data/models/posts/get_posts/Data.dart';
import '../../../logic/admin/admin_get_posts/admin_get_posts_bloc.dart';
import '../../../logic/admin/change_post_status/change_post_status_bloc.dart';
import '../../../logic/admin/change_post_status/change_post_status_state.dart';
import '../../../shared/api_client/endpoints.dart';
import '../../../shared/cache/storage.dart';
import '../../../shared/theme/assets.dart';
import '../../../shared/theme/text_theme.dart';
import '../../widgets/custom_alert_dialog.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_toast_app.dart';
import '../../widgets/text_field.dart';
import '../auth/forget_password/forget_password_view.dart';
import '../profile/profile_browser_view.dart';

// ignore: must_be_immutable
class HomeDetails extends StatelessWidget {
  HomeDetails({Key? key, required this.postData}) : super(key: key);
  PostData postData;
  var costController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.paddingOf(context).top;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: topPadding + 10),
          Row(
            children: [
              SizedBox(width: 10),
              BackWithTitle(title: !Tr.isAr ? postData.category!.nameEn ?? '' : postData.category!.nameAr ?? ''),
              Spacer(),
              InkWell(
                onTap: () {
                  makePhoneCall(postData.phone ?? "");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Icon(Icons.phone_in_talk_outlined, color: KColors.accentColorL, size: 20),
                ),
              ),
              KChatIconButton(userId: postData.userId, userName: postData.user?.name, image: postData.image),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 5),
                        child: Text(
                          postData.user!.name ?? '',
                          style: KTextStyle.of(context).appBar,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 23, bottom: 14),
                        child: Row(
                          children: [
                            const Icon(Icons.location_on_rounded, color: Colors.black, size: 20),
                            const SizedBox(width: 5),
                            Text(
                              (postData.country ?? '').capitalizeFirst ?? "",
                              style: KTextStyle.of(context).body.copyWith(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(postData.title ?? '', style: KTextStyle.of(context).body),
                  SizedBox(height: 10),
                  postData.image == null
                      ? Container(width: double.infinity, alignment: Alignment.center, child: SvgPicture.asset(KAssets.noImage, height: 150))
                      : Container(
                          height: 186,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(image: NetworkImage("${KEndPoints.baseUrlStorage}${postData.image.toString()}"), fit: BoxFit.cover),
                          ),
                        ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: KColors.accentColorD.withOpacity(.1),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            iconTextValue(
                              text: Tr.get.start_date,
                              icon: Icons.calendar_month_outlined,
                              value: postData.startDate ?? '',
                              context: context,
                            ),
                            iconTextValue(
                              text: Tr.get.end_date,
                              value: postData.endDate ?? '',
                              context: context,
                              icon: Icons.calendar_month_outlined,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: Row(
                          children: [
                            iconTextValue(
                              text: Tr.get.start_time,
                              icon: Icons.access_time_rounded,
                              value: postData.startTime ?? '',
                              context: context,
                            ),
                            iconTextValue(
                              text: Tr.get.end_time,
                              value: postData.endTime ?? '',
                              context: context,
                              icon: Icons.access_time_rounded,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 9),
                    child: Text(
                      Tr.get.description,
                      style: KTextStyle.of(context).appBar.copyWith(fontSize: 16),
                    ),
                  ),
                  Text(
                    postData.description ?? "",
                    style: KTextStyle.of(context).body.copyWith(color: Colors.grey, fontSize: 14),
                  ),
                  if (KStorage.i.getUser!.role == "admin")
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 9),
                      child: Text(
                        Tr.get.id_company,
                        style: KTextStyle.of(context).appBar.copyWith(fontSize: 16),
                      ),
                    ),
                  if (KStorage.i.getUser!.role == "admin")
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            navigateTo(
                              context,
                              PhotoViewIdImage(
                                image: "${KEndPoints.baseUrlStorage}${postData.idImage.toString()}",
                              ),
                            );
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .8,
                            child: Image.network("${KEndPoints.baseUrlStorage}${postData.idImage.toString()}"),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          if (KStorage.i.getUser!.role == "user" || postData.status == "waiting")
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 16, spreadRadius: 5, color: Colors.black12)],
              ),
              child: KStorage.i.getUser!.role == "user"
                  ? KButton(
                      title: Tr.get.visit_profile,
                      onPressed: () async {
                        navigateTo(context, ProfileBrowserView(userData: postData.user!));
                      },
                    )
                  : postData.status == "waiting"
                      ? BlocConsumer<ChangePostStatusBloc, ChangePostStatusState>(
                          listener: (context, state) {
                            state.whenOrNull(success: () async {
                              AdminGetPostsBloc.of(context).getLastCall();
                              Navigator.pop(context);
                              Navigator.pop(context);
                              KToast(message: Tr.get.update_successfully, state: ToastStates.SUCCESS);
                            });
                          },
                          builder: (context, state) {
                            return Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: KColors.accentColorD,
                                        width: 1,
                                      ),
                                    ),
                                    child: KButton(
                                      title: Tr.get.rejected.replaceAll("ed", '').capitalizeFirst!,
                                      kFillColor: Colors.transparent,
                                      onPressed: () async {
                                        await ChangePostStatusBloc.of(context).changePostStatus("rejected", postData.id!, 0);
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: KButton(
                                    title: Tr.get.accepted.replaceAll("ed", '').capitalizeFirst!,
                                    onPressed: () async {
                                      await customAlertDialog(
                                        context: context,
                                        body: Container(
                                          padding: EdgeInsets.symmetric(vertical: 20),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              KTextFormField(
                                                controller: costController,
                                                keyboardType: TextInputType.number,
                                                validator: (String? value) {
                                                  if (value!.isEmpty) {
                                                    return Tr.get.valid_text;
                                                  }
                                                  return null;
                                                },
                                                hintText: Tr.get.cost_ads,
                                              ),
                                              SizedBox(height: 20),
                                              KButton(
                                                title: Tr.get.confirm,
                                                onPressed: () {
                                                  ChangePostStatusBloc.of(context).changePostStatus(
                                                    "accepted",
                                                    postData.id!,
                                                    int.parse(costController.text),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        colorBorder: Colors.white,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                        )
                      : SizedBox(),
            )
        ],
      ),
    );
  }
}

iconTextValue({context, required String text, required String value, required IconData icon}) {
  return Expanded(
    child: Column(
      children: [
        Row(
          children: [
            Icon(icon, color: KColors.accentColorD, size: 20),
            const SizedBox(width: 8),
            Text(text.capitalizeFirst ?? text, style: KTextStyle.of(context).body.copyWith(color: Colors.black, fontSize: 16)),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(value, style: KTextStyle.of(context).body.copyWith(color: Colors.grey, fontSize: 13)),
          ],
        ),
      ],
    ),
  );
}

makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
  await launchUrl(launchUri);
}
