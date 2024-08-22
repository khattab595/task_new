import 'package:flutter/material.dart';
import 'package:the_business_square/data/models/countary/Country_model.dart';
import 'package:the_business_square/shared/localization/trans.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import 'package:the_business_square/shared/theme/helper.dart';

import 'multi_select_dialog/multi_select_view.dart';

class CountryDropDown extends StatelessWidget {
  const CountryDropDown({super.key, required this.onChanged, this.value});
  final dynamic Function(CountryModel?) onChanged;
  final CountryModel? value;
  @override
  Widget build(BuildContext context) {
    return MultiSelector.single<CountryModel>(
      title: Tr.get.country,
      value: value,
      items: countries.map((e) => MultiSelectorItem(value: e, child: Text(Tr.isAr ? e.ar : e.en), searchValue: Tr.isAr ? e.ar : e.en)).toList(),
      popupDecoration: BoxDecoration(color: KColors.of(context).background, borderRadius: KHelper.btnBorderRad),
      btnDecoration: BoxDecoration(
        color: KColors.of(context).textField.withOpacity(0),
        borderRadius: KHelper.btnBorderRad,
        border: Border.all(width: .5, color: Color(0xff002036)),
      ),
      onChanged: onChanged,
    );
  }
}
