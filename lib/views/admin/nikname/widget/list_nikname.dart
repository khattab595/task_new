import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../logic/admin/nik_name/add_nik_name_bloc.dart';
import '../../../../logic/admin/nik_name/add_nik_name_state.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/text_theme.dart';
import '../../../widgets/loading/loading.dart';

class ListNikName extends StatelessWidget {
  const ListNikName({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNikNameBloc, AddNikNameState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Padding(padding: EdgeInsets.only(top: 200), child: CircularLoaderWidget()),
          orElse: () {
            return Center(child: Text(Tr.get.nothing_to_show));
          },
          successGet: (nikname) => ListView.builder(
            itemCount: nikname.data!.length,
            itemBuilder: (context, index) {
              var item = nikname.data![index];
              return Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      item.nickName!,
                      style: KTextStyle.of(context).textTitle.copyWith(color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: KColors.accentColorD, width: 1),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          child: Text(
                            "${item.coins.toString()} ${Tr.get.points}",
                            style: KTextStyle.of(context).textTitle.copyWith(color: KColors.accentColorD, fontSize: 14),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete_outline_rounded, color: Colors.red),
                          onPressed: () async {
                            await AddNikNameBloc.of(context).deleteNikName(id: item.id!);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
