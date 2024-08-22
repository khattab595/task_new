import 'package:dashed_rect/dashed_rect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:the_business_square/extensions.dart';
import 'package:the_business_square/shared/theme/assets.dart';
import 'package:the_business_square/views/widgets/custom_button.dart';
import 'package:the_business_square/views/widgets/custom_navigate.dart';
import 'package:the_business_square/views/widgets/date_picker.dart';
import 'package:the_business_square/views/widgets/pick_image_widget.dart';
import 'package:the_business_square/views/widgets/text_field.dart';

import '../../../data/models/category/Data.dart';
import '../../../logic/core/settings/settings_cubit.dart';
import '../../../logic/posts/add_post/add_post_bloc.dart';
import '../../../logic/posts/add_post/add_post_state.dart';
import '../../../logic/profile/get_profile/profile_bloc.dart';
import '../../../logic/profile/get_profile/profile_state.dart';
import '../../../shared/cache/storage.dart';
import '../../../shared/localization/trans.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/text_theme.dart';
import '../../widgets/country_drop.dart';
import '../../widgets/custom_alert_dialog.dart';
import '../../widgets/custom_toast_app.dart';
import '../../widgets/loading/loading.dart';
import '../../widgets/main_nav_bar.dart';
import '../auth/forget_password/forget_password_view.dart';

class CreateAdsView extends StatefulWidget {
  CreateAdsView({Key? key, required this.categoryId}) : super(key: key);
  final CategoryData categoryId;
  @override
  State<CreateAdsView> createState() => _CreateAdsViewState();
}

class _CreateAdsViewState extends State<CreateAdsView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController to = TextEditingController();
  final TextEditingController from = TextEditingController();
  final TextEditingController toTime = TextEditingController();
  final TextEditingController fromTime = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var bloc = AddPostBloc.of(context);
    final topPadding = MediaQuery.paddingOf(context).top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: [
            SizedBox(height: topPadding + 10),
            Row(
              children: [
                BackWithTitle(title: Tr.get.create_ad),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: BlocBuilder<ProfileBloc, ProfileState>(
                          builder: (context, state) {
                            return Text(
                              "${KStorage.i.getUser!.coins} ${Tr.get.points}",
                              style: KTextStyle.of(context).body.copyWith(color: Colors.orangeAccent),
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      // ignore: deprecated_member_use
                      SvgPicture.asset(KAssets.coin, color: Colors.orangeAccent),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24),

                      Text(Tr.get.category, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      SizedBox(height: 10),
                      Container(
                        height: 48,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: KColors.accentColorD,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: KColors.accentColorD.withOpacity(.1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              (Tr.isAr ? widget.categoryId.nameAr : widget.categoryId.nameEn)?.capitalize ?? "",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: KColors.accentColorD,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      KTextFormField(
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return Tr.get.valid_text;
                          }
                          return null;
                        },
                        hintText: Tr.get.phone,
                        keyboardType: TextInputType.phone,
                        onChanged: AddPostBloc.of(context).setPhone,
                      ),
                      SizedBox(height: 8),
                      KTextFormField(
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return Tr.get.valid_text;
                          }
                          return null;
                        },
                        hintText: Tr.get.ad_title,
                        onChanged: bloc.setTitleAds,
                      ),
                      const SizedBox(height: 8),
                      KTextFormField(
                        maxLines: 8,
                        height: 150,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return Tr.get.valid_text;
                          }
                          return null;
                        },
                        hintText: Tr.get.description,
                        onChanged: bloc.setDescription,
                      ),
                      // Text(Tr.get.from_to, style: KTextStyle.of(context).appBar),
                      const SizedBox(height: 8),
                      rowCountry(context),
                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Expanded(
                            child: KTextFormField(
                              controller: from,
                              keyboardType: TextInputType.none,
                              suffixIcon: Icon(Icons.calendar_month_rounded),
                              onTap: () async {
                                var date = await SfDatePicker.showDateTime(context, DateTime.now());

                                String? dateValue = DateFormat('yyyy-MM-dd').format(date);
                                from.text = dateValue;
                                bloc.setStartDate(from.text);
                              },
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return Tr.get.valid_text;
                                }
                                return null;
                              },
                              hintText: Tr.get.start_date.capitalize,
                              onChanged: bloc.setStartDate,
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: KTextFormField(
                              controller: to,
                              keyboardType: TextInputType.none,
                              suffixIcon: Icon(Icons.calendar_month_rounded),
                              onTap: () async {
                                var date = await SfDatePicker.showDateTime(context, DateTime.now());

                                String? dateValue = DateFormat('yyyy-MM-dd').format(date);
                                to.text = dateValue;
                                bloc.setEndDate(to.text);
                              },
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return Tr.get.valid_text;
                                }
                                return null;
                              },
                              enabled: true,
                              hintText: Tr.get.end_date.capitalize,
                              onChanged: bloc.setEndDate,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: KTextFormField(
                              controller: fromTime,
                              keyboardType: TextInputType.none,
                              suffixIcon: Icon(Icons.access_time),
                              onTap: () async {
                                fromTime.text = (await SfDatePicker.timePickerData(context)) ?? "";
                                bloc.setStartTime(fromTime.text);
                              },
                              enabled: true,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return Tr.get.valid_text;
                                }
                                return null;
                              },
                              hintText: Tr.get.start_time.capitalize,
                              onChanged: bloc.setStartTime,
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: KTextFormField(
                              controller: toTime,
                              keyboardType: TextInputType.none,
                              suffixIcon: Icon(Icons.access_time),
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return Tr.get.valid_text;
                                }
                                return null;
                              },
                              onTap: () async {
                                toTime.text = (await SfDatePicker.timePickerData(context)) ?? "";
                                bloc.setEndTime(toTime.text);
                              },
                              enabled: true,
                              hintText: Tr.get.end_time.capitalize,
                              onChanged: bloc.setEndTime,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 16),
                      Text(Tr.get.image_ads, style: KTextStyle.of(context).textTitle.copyWith(color: Colors.black)),
                      SizedBox(height: 16),

                      DashedRect(
                        color: Color(0xff002036).withOpacity(.4),
                        strokeWidth: 1.0,
                        gap: 5.0,
                        child: SizedBox(
                          width: double.infinity,
                          child: PickProImageWidget(
                            onSelect: (file) {
                              bloc.setImage(file);
                            },
                            radius: 150,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(Tr.get.id_company, style: KTextStyle.of(context).textTitle.copyWith(color: Colors.black)),
                      SizedBox(height: 16),

                      DashedRect(
                        color: Color(0xff002036).withOpacity(.4),
                        strokeWidth: 1.0,
                        gap: 5.0,
                        child: SizedBox(
                          width: double.infinity,
                          child: PickProImageWidget(
                            onSelect: (file) {
                              bloc.setImageId(file);
                            },
                            radius: 150,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            ),
            BlocConsumer<AddPostBloc, AddPostState>(
              listener: (context, state) {
                state.whenOrNull(
                  successAddPost: (data) {
                    customAlertDialog(
                      context: context,
                      colorBorder: Colors.white,
                      body: SizedBox(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 24),
                            Container(
                              child: Icon(Icons.check_rounded, size: 40, color: Colors.white),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    KColors.accentColorD,
                                    KColors.accentColorD.withOpacity(.02),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              data.message!,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 24),
                            KButton(
                              title: Tr.get.close,
                              onPressed: () {
                                Navigator.pop(context);
                                navigateAndFinish(context, NavBar());
                              },
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  error: (error) {
                    KToast(message: error, state: ToastStates.ERROR);
                  },
                );
              },
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: state.maybeWhen(
                    loading: () => const CircularLoaderWidget(),
                    orElse: () => KButton(
                      title: Tr.get.post_now,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          bloc.setCategoryId(widget.categoryId.id.toString());
                          bloc.addPost();
                        }
                      },
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  rowCountry(context) {
    var bloc = AddPostBloc.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(Tr.get.country, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        const SizedBox(height: 8),
        CountryDropDown(
          onChanged: (value) {
            var country = SettingsBloc.of(context).locale == Locale('ar') ? value!.en : value!.ar;
            bloc.setCountry(country);
          },
        ),
        SizedBox(height: 8),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: KTextFormField(
            maxLines: 2,
            hintText: Tr.get.address_details,
            onChanged: bloc.setDetailsAddress,
          ),
        )
      ],
    );
  }
}
