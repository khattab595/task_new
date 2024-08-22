import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:the_business_square/logic/admin/logout/logout_bloc.dart';
import 'package:the_business_square/shared/api_client/endpoints.dart';
import 'package:the_business_square/views/user/auth/forget_password/forget_password_view.dart';

import '../../../../logic/core/settings/settings_cubit.dart';
import '../../../../logic/profile/change_status_profile/change_status_profile_bloc.dart';
import '../../../../logic/profile/change_status_profile/change_status_profile_state.dart';
import '../../../../logic/profile/get_profile/profile_bloc.dart';
import '../../../../logic/profile/get_profile/profile_state.dart';
import '../../../../shared/cache/storage.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/assets.dart';
import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/text_theme.dart';
import '../../../widgets/custom_alert_dialog.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_navigate.dart';
import '../../../widgets/custom_toast_app.dart';
import '../../../widgets/loading/loading.dart';
import '../../../widgets/text_field.dart';
import '../../auth/login/login_view.dart';
import '../edit_profile_view.dart';
import 'list_post_user_browser.dart';

class ProfileBodyWidget extends StatelessWidget {
  final nameCompanyController = TextEditingController();
  final nikNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.whenOrNull(
          successEditDetails: (data) {
            KToast(message: data.message!, state: ToastStates.SUCCESS);
            Navigator.pop(context);
            // navigateAndFinish(context, const NavBar());
          },
          error: (error) {
            KToast(message: error, state: ToastStates.ERROR);
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Padding(padding: EdgeInsets.only(top: 200), child: CircularLoaderWidget()),
          success: (userData) {
            return Column(
              children: [
                SizedBox(height: 16),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: false,
                  horizontalTitleGap: 0,
                  leading: InkWell(
                    onTap: () {
                      showImageViewer(
                        context,
                        Image.network("${KEndPoints.baseUrlStorage}${userData.data?.image}").image,
                        swipeDismissible: true,
                        doubleTapZoomable: true,
                      );
                    },
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: userData.data!.image == null
                              ? AssetImage(KAssets.profileLogo) as ImageProvider
                              : NetworkImage("${KEndPoints.baseUrlStorage}${userData.data!.image!}"),
                          fit: userData.data!.image == null ? BoxFit.scaleDown : BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  title: Row(
                    children: [
                      Text(userData.data?.name?.capitalize ?? '', style: KTextStyle.of(context).appBar.copyWith(fontSize: 18)),
                      if (userData.data?.nick_name != null)
                        Text("  ( ${userData.data?.nick_name ?? ""} )",
                            style: KTextStyle.of(context).appBar.copyWith(fontSize: 12, color: KColors.accentColorD)),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        userData.data?.jobTitle?.capitalize ?? '',
                        style: KTextStyle.of(context).body.copyWith(fontSize: 14, color: KColors.accentColorD),
                      ),
                      if (userData.data?.company_name != null) ...[
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 8), child: Container(height: 16, width: 1, color: KColors.accentColorD)),
                        Text(userData.data?.company_name ?? '', style: KTextStyle.of(context).body.copyWith(fontSize: 14, color: KColors.accentColorD)),
                      ]
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      navigateTo(context, EditProfileView());
                    },
                    icon: Icon(Icons.mode_edit_outline_outlined, color: KColors.accentColorD),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(height: 30, color: Color(0x1A007AFF)),
                ),
                BlocConsumer<ChangeStatusProfileBloc, ChangeStatusProfileState>(
                  listener: (context, state) {
                    state.whenOrNull(success: (value) {
                      KToast(message: Tr.get.update_successfully, state: ToastStates.SUCCESS);
                    });
                  },
                  builder: (context, state) {
                    final public = KStorage.i.getUser?.status == "public";

                    return ProfileTile(
                      iconData: Icons.admin_panel_settings_outlined,
                      title: Tr.get.account_privacy,
                      trailing: state is ChangeStatusProfileStateLoading
                          ? SizedBox(
                              width: 25,
                              height: 25,
                              child: Center(child: CircularProgressIndicator.adaptive()),
                            )
                          : Text((public ? Tr.get.public : Tr.get.private).capitalize!, style: TextStyle(color: KColors.accentColorD, fontSize: 14)),
                      onTap: () async {
                        await ChangeStatusProfileBloc.of(context).changeStatusProfile(public ? "private" : "public");
                      },
                    );
                  },
                ),
                ProfileTile(
                  iconData: Icons.list_alt_sharp,
                  onTap: () {
                    navigateTo(context, MyAdsView());
                  },
                  title: Tr.get.published_ads,
                ),
                ProfileTile(
                  iconData: Icons.edit_note,
                  title: Tr.get.edit_company_nikName,
                  trailing: (userData.data!.company_name == null || userData.data!.nick_name == null)
                      ? Text(
                          Tr.get.complete_now,
                          style: KTextStyle.of(context).appBar.copyWith(fontSize: 14, color: KColors.accentColorD, decoration: TextDecoration.underline),
                        )
                      : null,
                  onTap: () {
                    onEditCompanyNikName(context);
                  },
                ),
                ProfileTile(
                  iconData: Icons.language_rounded,
                  title: Tr.get.lang,
                  trailing: Text((Tr.isAr ? Tr.get.ar : Tr.get.en).capitalize!, style: TextStyle(color: KColors.accentColorD, fontSize: 14)),
                  onTap: () {
                    SettingsBloc.of(context).updateLocale();
                  },
                ),
                ProfileTile(
                  iconData: Icons.delete,
                  title: Tr.get.delete_account,
                  onTap: () async {
                    await LogOutBloc.of(context).logout();
                    navigateAndFinish(context, LoginView());
                    KToast(message: Tr.get.mssage_delete, state: ToastStates.SUCCESS);
                  },
                ),
                ProfileTile(
                  iconData: Icons.logout_rounded,
                  title: Tr.get.log_out,
                  onTap: () async {
                    await LogOutBloc.of(context).logout();
                    navigateAndFinish(context, LoginView());
                  },
                ),
              ],
            );
          },
          orElse: () {
            return Center(
              child: Padding(
                padding: EdgeInsets.only(top: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(Tr.get.login_have),
                    TextButton(
                      child: Text(Tr.get.login_now, style: KTextStyle.of(context).appBar.copyWith(color: KColors.accentColorD)),
                      onPressed: () {
                        KStorage.i.logOut;
                        navigateAndFinish(context, LoginView());
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  onEditCompanyNikName(context) {
    return customAlertDialog(
      context: context,
      colorBorder: Colors.white,
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.whenOrNull(
            successEditDetails: (data) {
              KToast(message: data.message!, state: ToastStates.SUCCESS);
              Navigator.pop(context);
              // navigateAndFinish(context, const NavBar());
            },
            error: (error) {
              KToast(message: error, state: ToastStates.ERROR);
            },
          );
        },
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Tr.get.complete_data,
                  style: KTextStyle.of(context).body.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Divider(height: 50),
                KTextFormField(
                  hintText: Tr.get.company_name,
                  controller: nameCompanyController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return Tr.get.valid_text;
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                KTextFormField(
                  hintText: Tr.get.nikname,
                  controller: nikNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return Tr.get.valid_text;
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: state.maybeWhen(
                    loading: () => const CircularLoaderWidget(),
                    orElse: () => KButton(
                      title: Tr.get.save,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ProfileBloc.of(context).changeDetailsProfile(company_name: nameCompanyController.text, nick_name: nikNameController.text);
                          ProfileBloc.of(context).fetchUser();
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({super.key, required this.iconData, required this.title, required this.onTap, this.trailing});
  final IconData iconData;
  final String title;
  final Function() onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Container(
          child: Icon(iconData, color: Color(0xff004187)),
          decoration: BoxDecoration(color: Color(0x1a002036), shape: BoxShape.circle),
          padding: EdgeInsets.all(8),
        ),
        title: Text(title.capitalize ?? title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff002036))),
        trailing: trailing != null
            ? trailing
            : Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 18,
                textDirection: Tr.isAr ? TextDirection.ltr : TextDirection.rtl,
                color: Color(0xff002036),
              ),
        onTap: onTap,
      ),
    );
  }
}

class MyAdsView extends StatelessWidget {
  const MyAdsView({super.key});

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.paddingOf(context).top;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: topPadding + 10),
          BackWithTitle(title: Tr.get.published_ads),
          Expanded(child: ListPostUserBrowser(userId: KStorage.i.getUser?.id)),
        ],
      ),
    );
  }
}
