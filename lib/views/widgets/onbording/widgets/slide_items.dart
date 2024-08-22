import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../shared/theme/colors.dart';
import 'slide.dart';

class SlideItems extends StatelessWidget {
  final Slide slide;

  const SlideItems(this.slide, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(slide.image!, width: Get.width),
        const SizedBox(height: 50),
        Text(
          "${slide.title}",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: KColors.of(context).accentColor),
          textAlign: TextAlign.right,
        ),
        const SizedBox(height: 9),
        Text("${slide.desc}", style: const TextStyle(fontSize: 12), textAlign: TextAlign.center)
      ],
    );
  }
}
