import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_business_square/extensions.dart';

import '../../../../logic/admin/coin/coin_bloc.dart';
import '../../../../logic/admin/coin/coin_state.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/text_theme.dart';
import '../../../widgets/loading/loading.dart';

class ListCoin extends StatelessWidget {
  const ListCoin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoinBloc, CoinState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Padding(padding: EdgeInsets.only(top: 200), child: CircularLoaderWidget()),
          orElse: () {
            return Center(child: Text(Tr.get.nothing_to_show));
          },
          successGet: (data) => Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 35),
                    Expanded(
                      child: Text(
                        Tr.get.coin.capitalize,
                        style: KTextStyle.of(context).appBar.copyWith(fontSize: 18),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        Tr.get.dollar.capitalize,
                        style: KTextStyle.of(context).appBar.copyWith(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: data.data!.length,
                    itemBuilder: (context, index) {
                      var item = data.data![index];
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    child: Text(
                                      item.coins.toString(),
                                      style: KTextStyle.of(context).textTitle.copyWith(color: Colors.black, fontWeight: FontWeight.normal),
                                    ),
                                    decoration: BoxDecoration(color: Color(0xffF4F4F5), borderRadius: BorderRadius.circular(5)),
                                    alignment: Alignment.center,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    child: Text(
                                      item.price.toString(),
                                      style: KTextStyle.of(context).textTitle.copyWith(color: Colors.black, fontWeight: FontWeight.normal),
                                    ),
                                    decoration: BoxDecoration(color: Color(0xffF4F4F5), borderRadius: BorderRadius.circular(5)),
                                    alignment: Alignment.center,
                                  ),
                                ),
                                SizedBox(width: 20),
                                InkWell(
                                  onTap: () async {
                                    await CoinBloc.of(context).deleteCoin(id: item.id!);
                                  },
                                  child: Icon(Icons.delete_outline_rounded, color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
