import 'package:flutter/material.dart';

import '../../../../shared/theme/colors.dart';

class SlideDotes extends StatelessWidget {
  final bool isActive;

  const SlideDotes(this.isActive, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.only(right: 10),
      height: 8,
      width: isActive ? 20 : 8,
      decoration: BoxDecoration(
        color: isActive ? KColors.of(context).accentColor : Colors.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
