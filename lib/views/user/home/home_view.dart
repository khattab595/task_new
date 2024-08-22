import 'package:flutter/material.dart';
import 'package:the_business_square/views/user/home/widget/filter_widget.dart';
import 'package:the_business_square/views/user/home/widget/heder_home.dart';
import 'package:the_business_square/views/user/home/widget/list_post_data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tP = MediaQuery.paddingOf(context).top + 24;
    return Column(
      children: [
        SizedBox(height: tP),
        const HeaderWidgetScreen(),
        FilterWidget(),
        const ListPostData(),
      ],
    );
  }
}
