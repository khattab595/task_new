import 'package:flutter/material.dart';
import '../../logic/core/settings/settings_cubit.dart';
import '../../shared/localization/trans.dart';
import '../../shared/theme/text_theme.dart';


class LangSwitch extends StatelessWidget {
  const LangSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: SettingsBloc.of(context).updateLocale,
      icon: Text(
        SettingsBloc.of(context).locale == const Locale('ar') ? Tr.get.en : Tr.get.ar,
        style: KTextStyle.of(context).langSwitch,
      ),
    );
  }
}
