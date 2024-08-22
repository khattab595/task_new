import 'dart:io';

import 'package:dashed_rect/dashed_rect.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:the_business_square/data/models/category/Data.dart';
import 'package:the_business_square/data/models/live_stream/live_stream.dart';
import 'package:the_business_square/di/injection_container.dart';
import 'package:the_business_square/logic/category/category_bloc.dart';
import 'package:the_business_square/logic/category/category_state.dart';
import 'package:the_business_square/logic/create_live/create_live_bloc.dart';
import 'package:the_business_square/logic/create_live/create_live_state.dart';
import 'package:the_business_square/shared/cache/storage.dart';
import 'package:the_business_square/views/user/auth/forget_password/forget_password_view.dart';
import 'package:the_business_square/views/widgets/custom_button.dart';
import 'package:the_business_square/views/widgets/loading/loading_overlay.dart';
import 'package:the_business_square/views/widgets/multi_select_dialog/multi_select_view.dart';

import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/helper.dart';
import '../../../widgets/pick_image_widget.dart';
import '../../../widgets/text_field.dart';
import '../live_s.dart';

class NewMeeting extends StatefulWidget {
  NewMeeting({Key? key}) : super(key: key);

  @override
  State<NewMeeting> createState() => _NewMeetingState();
}

class _NewMeetingState extends State<NewMeeting> {
  final costCtrl = TextEditingController();
  final titleCtrl = TextEditingController();
  final descCtrl = TextEditingController();
  int? categoryId;
  File? file;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final topPad = MediaQuery.paddingOf(context).top;

    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<CreateLiveBloc>(),
        child: Column(
          children: [
            SizedBox(height: topPad + 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: BackWithTitle(title: Tr.get.create_new_meeting),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(height: 30, color: Color(0x1A007AFF)),
            ),
            SizedBox(height: 20),
            Expanded(
              child: BlocConsumer<CreateLiveBloc, CreateLiveState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (model) {
                      Get.to(() => LiveStreaming(broadcastMode: BroadcastMode.broadcasting, liveStream: model));
                    },
                  );
                },
                builder: (context, state) {
                  return Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: KLoadingOverlay(
                        isLoading: state is CreateLiveStateLoading,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            DashedRect(
                              color: Color(0xff002036).withOpacity(.4),
                              strokeWidth: 1.0,
                              gap: 5.0,
                              child: SizedBox(
                                width: double.infinity,
                                child: PickProImageWidget(
                                  onSelect: (file) {
                                    this.file = file;
                                  },
                                  radius: 150,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            KTextFormField(
                              hintText: Tr.get.title,
                              keyboardType: TextInputType.text,
                              controller: titleCtrl,
                              validator: (values) {
                                if (values == null || values.isEmpty) {
                                  return Tr.get.valid_text;
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 8),
                            KTextFormField(
                              hintText: Tr.get.description,
                              keyboardType: TextInputType.text,
                              controller: descCtrl,
                              validator: (values) {
                                if (values == null || values.isEmpty) {
                                  return Tr.get.valid_text;
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 8),
                            KTextFormField(
                              hintText: Tr.get.cost,
                              formatter: [
                                FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                                FilteringTextInputFormatter.deny(RegExp(r'^0+')),
                              ],
                              keyboardType: TextInputType.text,
                              controller: costCtrl,
                              validator: (values) {
                                if (values == null || values.isEmpty) {
                                  return Tr.get.valid_text;
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            Text(Tr.get.category, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                            SizedBox(height: 10),
                            BlocBuilder<CategoryBloc, CategoryState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  orElse: () {
                                    return Text(Tr.get.nothing_to_show);
                                  },
                                  success: (data) {
                                    return MultiSelector.single<CategoryData>(
                                      title: Tr.get.category,
                                      popupDecoration: BoxDecoration(color: KColors.of(context).background, borderRadius: KHelper.btnBorderRad),
                                      btnDecoration: BoxDecoration(
                                        color: KColors.of(context).textField.withOpacity(0),
                                        borderRadius: KHelper.btnBorderRad,
                                        border: Border.all(width: .5, color: Color(0xff002036)),
                                      ),
                                      items: data.data!
                                          .map(
                                            (e) => MultiSelectorItem(
                                              value: e,
                                              child: Text(Tr.isAr ? e.nameAr ?? '' : e.nameEn ?? ''),
                                              searchValue: Tr.isAr ? e.nameAr ?? '' : e.nameEn ?? '',
                                            ),
                                          )
                                          .toList(),
                                      onChanged: (values) {
                                        categoryId = values!.id;
                                      },
                                      validator: (values) {
                                        if (values == null) {
                                          return Tr.get.valid_text;
                                        }
                                        return null;
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                            SizedBox(height: 50),
                            KButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  CreateLiveBloc.of(context).add(
                                    LiveStream(
                                      channel: KStorage.i.getUser!.id!.toString(),
                                      title: titleCtrl.text,
                                      cost: int.tryParse(costCtrl.text),
                                      description: descCtrl.text,
                                      image: file?.path,
                                      token: 'test',
                                      categoryId: categoryId.toString(),
                                    ).toJson(),
                                  );
                                }
                              },
                              title: Tr.get.startLive,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
