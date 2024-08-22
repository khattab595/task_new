import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_business_square/data/models/countary/Country_model.dart';
import 'package:the_business_square/extensions.dart';
import 'package:the_business_square/logic/get_posts/get_posts_bloc.dart';
import 'package:the_business_square/shared/theme/assets.dart';
import 'package:the_business_square/views/widgets/country_drop.dart';

import '../../../../data/models/category/Data.dart';
import '../../../../logic/category/category_bloc.dart';
import '../../../../logic/category/category_state.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/helper.dart';
import '../../../widgets/multi_select_dialog/multi_select_view.dart';

// ignore: must_be_immutable
class FilterWidget extends StatefulWidget {
  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  String? categoryName;
  CategoryData? category;

  CountryModel? country;
  String? countryName;

  bool showCountry = true;
  bool showCategory = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (showCategory)
                Expanded(
                  child: BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Text(Tr.get.nothing_to_show);
                        },
                        success: (data) {
                          return MultiSelector.single<CategoryData>(
                            title: Tr.get.category,
                            items: data.data!
                                .map(
                                  (e) => MultiSelectorItem(
                                    value: e,
                                    child: Text(Tr.isAr ? e.nameAr ?? '' : e.nameEn ?? ''),
                                    searchValue: Tr.isAr ? e.nameAr ?? '' : e.nameEn ?? '',
                                  ),
                                )
                                .toList(),
                            onChanged: (values) {
                              category = values;
                              categoryName = Tr.isAr ? values!.nameAr ?? '' : values!.nameEn ?? '';
                              setState(() {});
                            },
                            value: category,
                            popupDecoration: BoxDecoration(color: KColors.of(context).background, borderRadius: KHelper.btnBorderRad),
                            btnDecoration: BoxDecoration(
                              color: KColors.of(context).textField.withOpacity(0),
                              borderRadius: KHelper.btnBorderRad,
                              border: Border.all(width: .5, color: Color(0xff002036)),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              const SizedBox(width: 5),
              if (showCountry)
                Expanded(
                  child: CountryDropDown(
                    value: country,
                    onChanged: (values) {
                      country = values;
                      countryName = Tr.isAr ? values!.ar : values!.en;
                      setState(() {});
                    },
                  ),
                ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {
                  GetPostsBloc.of(context).get_posts(category: categoryName, country: countryName, loadMore: false);
                },
                child: SvgPicture.asset(KAssets.filter_icon, height: 48),
              )
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              if (category != null)
                SelectedFiltered(
                  title: categoryName!,
                  onTap: () async {
                    showCategory = false;

                    setState(() {
                      category = null;
                      categoryName = null;
                    });
                    await Future.delayed(Duration(milliseconds: 5));
                    showCategory = true;
                    setState(() {});
                  },
                ),
              SizedBox(width: 10),
              if (country != null)
                SelectedFiltered(
                  title: countryName!,
                  onTap: () async {
                    showCountry = false;

                    setState(() {
                      country = null;
                      countryName = null;
                    });
                    await Future.delayed(Duration(milliseconds: 5));
                    showCountry = true;
                    setState(() {});
                  },
                ),
            ],
          )
        ],
      ),
    );
  }
}

class SelectedFiltered extends StatelessWidget {
  const SelectedFiltered({super.key, required this.title, this.onTap});
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: KColors.accentColorD.withOpacity(.1),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title.capitalize,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: KColors.accentColorD,
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: onTap,
            child: Icon(Icons.cancel_outlined, size: 18),
          )
        ],
      ),
    );
  }
}
