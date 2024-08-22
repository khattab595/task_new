import 'package:flutter/material.dart';

import '../../logic/core/settings/settings_cubit.dart';
import '../../shared/theme/colors.dart';

class CustomDropdown extends StatefulWidget {
  final String dropdownTable;
  final List<dynamic>  dataModel;
final Function(String?)?onChange;
  CustomDropdown({Key? key, required this.dropdownTable, required this.dataModel, this.onChange}) : super(key: key);
  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      decoration: BoxDecoration(
        color: KColors.textFieldL,
        borderRadius: BorderRadius.circular(15),
        //border: Border.all(color:KColors.textL, width: 1),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
          decoration: const InputDecoration(
            isDense: true,
            prefixIcon: Icon(
              Icons.keyboard_arrow_down,
              color: KColors.textL,
              size: 24,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
          isDense: true,
          isExpanded: true,
          dropdownColor: KColors.textFieldL,
          borderRadius: BorderRadius.circular(3),
          elevation: 0,
          focusColor: KColors.textL,
          iconSize: 0.0,
          value: widget.dropdownTable,
          items: widget.dataModel.map<DropdownMenuItem<String> >((value) {
            return DropdownMenuItem(
              value:SettingsBloc.of(context).locale ==   Locale('ar') ? value.nameEn:value.nameAr!,
              child: Text(
                SettingsBloc.of(context).locale ==   Locale('ar') ? value.nameEn:value.nameAr!,
                style: const TextStyle(color: KColors.textL, fontSize: 14, fontWeight: FontWeight.w500),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            );
          }).toList(),
          onChanged: widget. onChange!

        ),
      ),
    );
  }
}
