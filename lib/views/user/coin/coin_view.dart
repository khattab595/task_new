// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../logic/admin/coin/coin_bloc.dart';
import '../../../logic/admin/coin/coin_state.dart';
import '../../../logic/payment/auth_payment/auth_payment_bloc.dart';
import '../../../logic/payment/auth_payment/auth_payment_state.dart';

import '../../../logic/profile/get_profile/profile_bloc.dart';
import '../../../shared/cache/storage.dart';
import '../../../shared/localization/trans.dart';
import '../../../shared/theme/assets.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/text_theme.dart';
import '../../widgets/loading/loading.dart';

// ignore: must_be_immutable
class CoinView extends StatelessWidget {
  CoinView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(color: KColors.accentColorD),
        title: Text(
          Tr.get.store,
          style: KTextStyle.of(context).appBar.copyWith(color: KColors.accentColorD),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("${KStorage.i.getUser!.coins} ${Tr.get.points}", style: KTextStyle.of(context).body2.copyWith(color: KColors.accentColorD)),
                const SizedBox(width: 10),
                SvgPicture.asset(KAssets.coin, color: Colors.orangeAccent),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(KAssets.how),
            iconAndValue(Tr.get.coin1, context),
            iconAndValue(Tr.get.coin2, context),
            iconAndValue(Tr.get.coin3, context),
            iconAndValue(Tr.get.coin4, context),
            iconAndValue(Tr.get.coin5, context),
            iconAndValue(Tr.get.coin6, context),
            SizedBox(height: 30),
            BlocConsumer<CoinBloc, CoinState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const Padding(padding: EdgeInsets.only(top: 200), child: CircularLoaderWidget()),
                  orElse: () {
                    return Center(child: Text(Tr.get.nothing_to_show));
                  },
                  successGet: (data) => Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.data!.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: BlocConsumer<PaymentBloc, PaymentState>(
                            listener: (context, state) async {
                              debugPrint(state.toString());
                              state.mapOrNull(
                                updateSuccess:(data) =>  ProfileBloc.of(context).fetchUser(),
                              );

                            },
                            builder: (context, state) {
                              return InkWell(
                                onTap: () {
                                  PaymentBloc.of(context).createPayment(package_id: data.data?[index].id,price:data.data?[index].price );
                                },
                                child: Container(
                                  width: 130,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    border: Border.all(color: KColors.accentColorL.withOpacity(.5)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      containerValue(
                                        color: KColors.accentColorL.withOpacity(.5),
                                        text: "${data.data![index].coins}${Tr.get.points}",
                                        context: context,
                                      ),
                                      SvgPicture.asset(KAssets.coin, color: Colors.amber, height: 60),
                                      Text("${data.data![index].price.toString()} \$", style: TextStyle(fontSize: 20)),
                                      SizedBox(height: 8),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
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

  iconAndValue(String text, context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(Icons.star, color: KColors.accentColorD.withOpacity(.5)),
          SizedBox(width: 10),
          Expanded(child: Text(text, style: KTextStyle.of(context).body2.copyWith(fontSize: 16))),
        ],
      ),
    );
  }

  containerValue({required Color color, required String text, context}) {
    return Container(
      width: 130,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        border: Border.all(color: KColors.accentColorL.withOpacity(.5)),
        color: color,
      ),
      child: Text(text, style: KTextStyle.of(context).title.copyWith(color: Colors.white, fontSize: 18)),
    );
  }
}
