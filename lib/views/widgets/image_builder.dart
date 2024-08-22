import 'package:flutter/material.dart';

Widget kBuildCircleImage(
  String path, {
  double? width,
  double? height,
  String? placeHolder,
  double? border,
  Color? borderColor,
  BoxShape? shape = BoxShape.rectangle,
}) {
  return Container(
    width: width ?? 40,
    height: height ?? 40,
    decoration: BoxDecoration(
      shape: shape!,
      border: border == 0 ? Border.all(style: BorderStyle.none) : Border.all(color: borderColor ?? Colors.white, width: border ?? 0.0),
    ),
    child: FadeInImage.assetNetwork(
      fadeInCurve: Curves.easeIn,
      fit: BoxFit.cover,
      placeholder: 'assets/image/loading.gif',
      image: path,
      height: height ?? 40,
      width: width ?? 40,
      imageErrorBuilder: (c, o, s) {
        return SizedBox(
          height: height ?? 40,
          width: width,
          child: const Icon(
            Icons.image,
            color: Colors.white,
          ),
        );
      },
    ),
  );
}
