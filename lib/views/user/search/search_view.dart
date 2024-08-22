import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_business_square/logic/get_posts/get_posts_bloc.dart';
import 'package:the_business_square/logic/get_posts/get_posts_state.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import '../../../shared/localization/trans.dart';
import '../../widgets/appbar.dart';
import '../../widgets/text_field.dart';
import '../home/widget/list_post_data.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.backgroundL,
      appBar: KAppBar(
        title: Tr.get.search,
      ),
      body: BlocConsumer<GetPostsBloc, GetPostsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: KTextFormField(
                  hintText: Tr.get.search_hint,
                  prefixIcon: Icon(Icons.search_outlined),
                  onChanged: (value) {
                    GetPostsBloc.of(context).get_posts(text: value, category: '', country: '');
                  },
                ),
              ),
              const ListPostData(),
            ],
          );
        },
      ),
    );
  }

  textAndIcon({required String text, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey, size: 15),
          Text(text, style: const TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
