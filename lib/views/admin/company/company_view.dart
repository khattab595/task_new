import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_business_square/views/admin/company/widget/list_company.dart';

import '../../../logic/admin/company/company_bloc.dart';
import '../../../logic/admin/company/company_state.dart';
import '../../../shared/localization/trans.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/text_theme.dart';
import '../../user/auth/forget_password/forget_password_view.dart';
import '../../widgets/custom_alert_dialog.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_toast_app.dart';
import '../../widgets/loading/loading.dart';
import '../../widgets/text_field.dart';

// ignore: must_be_immutable
class CompanyView extends StatelessWidget {
  CompanyView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  var numberCoinController = TextEditingController();
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final topPad = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset("assets/image/shape_ad_post.svg", width: width),
              Positioned(
                top: topPad + 30,
                width: width,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
                  child: BackWithTitle(title: Tr.get.company),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const ListCompany(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          customAlertDialog(
            context: context,
            body: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          Tr.get.add_company_name,
                          style: KTextStyle.of(context).body.copyWith(fontSize: 24),
                        ),
                        const SizedBox(height: 30),
                        KTextFormField(
                          hintText: Tr.get.company_name,
                          controller: nameController,
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
                          hintText: Tr.get.number_coin,
                          controller: numberCoinController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return Tr.get.valid_text;
                            }
                            return null;
                          },
                        ),
                        BlocConsumer<CompanyBloc, CompanyState>(
                          listener: (context, state) {
                            state.whenOrNull(
                              success: () {
                                CompanyBloc.of(context).getCompany();
                                KToast(message: Tr.get.addSuccessfully, state: ToastStates.SUCCESS);
                              },
                              error: (error) {
                                // KToast(message: error, state: ToastStates.ERROR);
                              },
                            );
                          },
                          builder: (context, state) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: state.maybeWhen(
                                loading: () => const CircularLoaderWidget(),
                                orElse: () => KButton(
                                  title: Tr.get.save,
                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      await CompanyBloc.of(context).addCompany(coin: numberCoinController.text, name: nameController.text);
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
