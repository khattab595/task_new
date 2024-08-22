import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:the_business_square/shared/cache/storage.dart';

import '../../../../logic/admin/delete_category/delete_category_bloc.dart';
import '../../../../logic/admin/delete_category/delete_category_state.dart';
import '../../../../logic/category/category_bloc.dart';
import '../../../../logic/category/category_state.dart';
import '../../../../logic/profile/get_profile/profile_bloc.dart';
import '../../../../shared/api_client/endpoints.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/text_theme.dart';
import '../../../widgets/custom_navigate.dart';
import '../../../widgets/image_builder.dart';
import '../../../widgets/loading/loading.dart';
import '../create_ad_view.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryBloc, CategoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Padding(padding: EdgeInsets.only(top: 150), child: CircularLoaderWidget()),
          orElse: () {
            return Center(child: Text(Tr.get.nothing_to_show));
          },
          success: (categoryModel) => ListView.builder(
            itemCount: categoryModel.data!.length,
            itemBuilder: (context, index) {
              var item = categoryModel.data![index];
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      if (KStorage.i.getUser!.role == "user") navigateTo(context, CreateAdsView(categoryId: item));
                    },
                    child: Row(
                      children: [
                        kBuildCircleImage("${KEndPoints.baseUrlStorage}${item.image}", shape: BoxShape.circle, width: 20, height: 20),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            (Tr.isAr ? item.nameAr : item.nameEn)?.capitalizeFirst ?? '',
                            style: KTextStyle.of(context).body.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                        ),
                        Spacer(),
                        if (ProfileBloc.of(context).user?.role == "admin")
                          BlocBuilder<DeleteCategoryBloc, DeleteCategoryState>(
                            builder: (context, state) {
                              return IconButton(
                                onPressed: () {
                                  DeleteCategoryBloc.of(context).deleteCategory(item.id!);
                                },
                                icon: Icon(Icons.delete, color: Colors.red),
                              );
                            },
                          ),
                      ],
                    ),
                  ),
                  // Container(width: double.infinity, height: 1, color: KColors.dividerD)
                ],
              );
            },
          ),
        );
      },
    );
  }
}
