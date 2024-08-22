import 'package:flutter/material.dart';
import 'package:the_business_square/views/user/auth/forget_password/forget_password_view.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../chat/view/widgets/chat_icon_btn.dart';
import '../../../../data/models/auth/Data.dart';
import '../../../../shared/api_client/endpoints.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/assets.dart';
import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/text_theme.dart';

class ProfileBrowserHeaderWidget extends StatelessWidget {
  final UserData userData;

  const ProfileBrowserHeaderWidget({super.key, required this.userData});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    bool isPublic = userData.status != "private";
    return Column(
      children: [
        SizedBox(
          height: 220,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 35,
                left: 20,
                right: 20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BackWithTitle(title: Tr.get.profile),
                    Spacer(),
                    if (isPublic)
                      InkWell(
                        onTap: () {
                          makePhoneCall(userData.phone ?? "");
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Icon(Icons.phone_in_talk_outlined, color: KColors.accentColorL, size: 20),
                        ),
                      ),
                    KChatIconButton(
                      userName: userData.name,
                      image: userData.image,
                      userId: userData.id,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 95,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.all(5),
                      height: width * .28,
                      width: width * .28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xffffffff),
                        image: DecorationImage(
                          image: userData.image == null
                              ? AssetImage(KAssets.profileLogo) as ImageProvider
                              : NetworkImage("${KEndPoints.baseUrlStorage}${userData.image!}"),
                          fit: userData.image == null ? BoxFit.scaleDown : BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userData.name ?? '', style: KTextStyle.of(context).appBar.copyWith(fontSize: 22)),
            SizedBox(
              width: 5,
            ),
            userData.jobTitle == null
                ? SizedBox()
                : Text("( ${userData.jobTitle} )", style: KTextStyle.of(context).appBar.copyWith(fontSize: 14, color: KColors.actionBTNL)),
          ],
        ),
        if (isPublic)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(userData.email ?? '', style: KTextStyle.of(context).body.copyWith(fontSize: 14)),
              Padding(padding: const EdgeInsets.all(8.0), child: Container(height: 20, width: 1, color: Colors.black)),
              Text(userData.phone ?? '', style: KTextStyle.of(context).body.copyWith(fontSize: 14)),
            ],
          )
      ],
    );
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }
}
