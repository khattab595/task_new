import 'package:flutter/material.dart';

import '../../shared/localization/trans.dart';
import '../../shared/theme/text_theme.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Color? backgroundColor;
  const KAppBar({Key? key, this.title, this.backgroundColor}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'appBar',
      child: AppBar(
        title: Text(title ?? Tr.get.appTitle),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: KTextStyle.of(context).appBar,
      ),
    );
  }
}
