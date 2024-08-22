import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_business_square/views/admin/nikname/widget/list_nikname.dart';

import '../../../logic/admin/nik_name/add_nik_name_bloc.dart';
import '../../../logic/admin/nik_name/add_nik_name_state.dart';
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
class NikNameView extends StatelessWidget {
  NikNameView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  var numberCoinController = TextEditingController();
  var nikNameController = TextEditingController();

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
                  child: BackWithTitle(title: Tr.get.nikname),
                ),
              )
            ],
          ),
          Expanded(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 40), child: const ListNikName())),
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
                          Tr.get.add_nikname,
                          style: KTextStyle.of(context).body.copyWith(fontSize: 24),
                        ),
                        const SizedBox(height: 20),
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
                        SizedBox(height: 10),
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
                        SizedBox(height: 20),
                        BlocConsumer<AddNikNameBloc, AddNikNameState>(
                          listener: (context, state) {
                            state.whenOrNull(
                              success: () {
                                AddNikNameBloc.of(context).getNikName();
                                KToast(message: Tr.get.addSuccessfully, state: ToastStates.SUCCESS);
                                Navigator.pop(context);
                                // navigateAndFinish(context, const NavBar());
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
                                      await AddNikNameBloc.of(context).addNickName(coin: numberCoinController.text, name: nikNameController.text);

                                      //   Navigator.pop(context);
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
