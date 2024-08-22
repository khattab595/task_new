import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_business_square/views/admin/coin_admin/widget/list_coin.dart';

import '../../../logic/admin/coin/coin_bloc.dart';
import '../../../logic/admin/coin/coin_state.dart';
import '../../../shared/localization/trans.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/text_theme.dart';
import '../../user/auth/forget_password/forget_password_view.dart';
import '../../widgets/custom_alert_dialog.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_toast_app.dart';
import '../../widgets/loading/loading.dart';
import '../../widgets/text_field.dart';

class AdminCoinView extends StatelessWidget {
  AdminCoinView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController numberCoinController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final topPad = MediaQuery.paddingOf(context).top;
    return Scaffold(
      backgroundColor: Colors.white,
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
                          Tr.get.add_coin,
                          style: KTextStyle.of(context).body.copyWith(fontSize: 24),
                        ),
                        const SizedBox(height: 20),
                        KTextFormField(
                          hintText: Tr.get.name_coin,
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
                        SizedBox(
                          height: 10,
                        ),
                        KTextFormField(
                          hintText: Tr.get.price,
                          controller: priceController,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return Tr.get.valid_text;
                            }
                            return null;
                          },
                        ),
                        BlocConsumer<CoinBloc, CoinState>(
                          listener: (context, state) {
                            state.whenOrNull(
                              success: () {
                                CoinBloc.of(context).getCoin();
                                KToast(message: Tr.get.addSuccessfully, state: ToastStates.SUCCESS);
                                // Navigator.pop(context);
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
                                      await CoinBloc.of(context)
                                          .addCoin(coin: numberCoinController.text, name: nameController.text, price: priceController.text);
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
                  child: BackWithTitle(title: Tr.get.coin_manage),
                ),
              )
            ],
          ),
          Expanded(child: ListCoin()),
        ],
      ),
    );
  }
}
