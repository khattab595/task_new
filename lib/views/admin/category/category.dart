import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_business_square/logic/category/category_bloc.dart';
import 'package:the_business_square/shared/error/failures.dart';
import 'package:the_business_square/views/user/create_ad/widget/list_category.dart';

import '../../../logic/admin/add_new_category/add_new_category_bloc.dart';
import '../../../logic/admin/add_new_category/add_new_category_state.dart';
import '../../../logic/admin/delete_category/delete_category_bloc.dart';
import '../../../logic/admin/delete_category/delete_category_state.dart';
import '../../../shared/localization/trans.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/text_theme.dart';
import '../../user/auth/forget_password/forget_password_view.dart';
import '../../widgets/custom_alert_dialog.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_toast_app.dart';
import '../../widgets/loading/loading.dart';
import '../../widgets/pick_image_widget.dart';
import '../../widgets/text_field.dart';

// ignore: must_be_immutable
class CategoryView extends StatelessWidget {
  CategoryView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final topPad = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: BlocListener<DeleteCategoryBloc, DeleteCategoryState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              KToast(message: Tr.get.deleted_successfully, state: ToastStates.SUCCESS);
              CategoryBloc.of(context).fetchCategory();
            },
          );
        },
        child: BlocListener<AddNewCategoryBloc, AddNewCategoryState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (data) {
                KToast(message: data.message ?? '', state: ToastStates.SUCCESS);
                CategoryBloc.of(context).fetchCategory();
              },
              error: (error) {
                KToast(message: KFailure.toError(error), state: ToastStates.ERROR);
              },
            );
          },
          child: Column(
            children: [
              Stack(
                children: [
                  SvgPicture.asset("assets/image/shape_ad_post.svg", width: width),
                  Positioned(
                    top: topPad + 30,
                    width: width,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
                      child: BackWithTitle(title: Tr.get.category),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const ListCategory(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await customAlertDialog(
            context: context,
            body: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        Tr.get.add_category,
                        style: KTextStyle.of(context).body.copyWith(fontSize: 24),
                      ),
                      const SizedBox(height: 20),
                      PickImageWidget(
                        onSelect: (file) {
                          AddNewCategoryBloc.of(context).setImage(file!.path);
                        },
                        // radius: 120,
                        // isAvatar: true,
                        hint: "",
                      ),
                      const SizedBox(height: 35),
                      KTextFormField(
                        hintText: Tr.get.name_category_ar,
                        onChanged: AddNewCategoryBloc.of(context).setNameAr,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return Tr.get.valid_text;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      KTextFormField(
                        hintText: Tr.get.name_category_en,
                        onChanged: AddNewCategoryBloc.of(context).setNameEn,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return Tr.get.valid_text;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      BlocBuilder<AddNewCategoryBloc, AddNewCategoryState>(
                        builder: (context, state) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: state.maybeWhen(
                              loading: () => const CircularLoaderWidget(),
                              orElse: () => KButton(
                                title: Tr.get.save,
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    await AddNewCategoryBloc.of(context).addCategory();
                                    Navigator.pop(context);
                                  }
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            colorBorder: Colors.white,
          );
        },
        backgroundColor: Color(0xff004187),
        shape: CircleBorder(),
        child: Icon(Icons.add, color: KColors.accentColorD, size: 30),
      ),
    );
  }
}
