import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_business_square/logic/profile/edit_profile/edit_profile_bloc.dart';
import 'package:the_business_square/views/widgets/text_field.dart';

import '../../../logic/auth/auth_state.dart';
import '../../../logic/profile/edit_profile/edit_profile_state.dart';
import '../../../logic/profile/get_profile/profile_bloc.dart';
import '../../../shared/localization/trans.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/helper.dart';
import '../../widgets/appbar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_toast_app.dart';
import '../../widgets/pick_image_widget.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final _formKey = GlobalKey<FormState>();
  File? file;
  @override
  Widget build(BuildContext context) {
    final bloc = EditProfileBloc.of(context);
    var intValue = ProfileBloc.of(context).user!;

    return Scaffold(
      appBar: KAppBar(title: Tr.get.edit_profile),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: KHelper.hPadding),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Container(
                width: 120,
                decoration: BoxDecoration(
                  color: KColors.of(context).textField,
                  shape: BoxShape.circle,
                  border: Border.all(color: KColors.of(context).textField, width: 2),
                ),
                child: FittedBox(child: PickProImageWidget(radius: 150, onSelect: bloc.setImage, isAvatar: true)),
              ),
              const SizedBox(height: 30),
              KTextFormField(
                showTitle: false,
                hintText: Tr.get.full_name,
                onChanged: bloc.setName,
                initVal: intValue.name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return Tr.get.valid_text;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              KTextFormField(
                showTitle: false,
                hintText: Tr.get.phone,
                keyboardType: TextInputType.number,
                onChanged: bloc.setPhone,
                initVal: intValue.phone!,
                validator: (value) {
                  if (value!.isEmpty) {
                    return Tr.get.valid_text;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              KTextFormField(
                showTitle: false,
                hintText: Tr.get.email,
                keyboardType: TextInputType.emailAddress,
                onChanged: bloc.setEmailRegister,
                initVal: intValue.email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return Tr.get.valid_text;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              KTextFormField(
                showTitle: false,
                hintText: Tr.get.job,
                onChanged: bloc.setJobTitle,
                initVal: intValue.jobTitle,
                validator: (value) {
                  if (value!.isEmpty) {
                    return Tr.get.valid_text;
                  }
                  return null;
                },
              ),
              SizedBox(height: 50),
              BlocConsumer<EditProfileBloc, EditProfileState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (data) {
                      KToast(message: data.message!, state: ToastStates.SUCCESS);
                    },
                    error: (error) {},
                  );
                },
                builder: (context, state) {
                  return KButton(
                    title: Tr.get.save,
                    isLoading: state is AuthStateLoading,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        EditProfileBloc.of(context).update();
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
