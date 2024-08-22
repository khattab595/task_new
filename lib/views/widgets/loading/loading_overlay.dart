import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import 'package:the_business_square/views/widgets/error/error_view.dart';

import '../../../shared/theme/helper.dart';

class KLoadingOverlay extends StatelessWidget {
  final Widget? child;
  final bool isLoading, reverseTheme;
  const KLoadingOverlay({Key? key, this.child, this.isLoading = false, this.reverseTheme = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child ?? SizedBox(width: Get.width, height: Get.height),
        if (isLoading)
          Positioned(
            top: 0,
            width: Get.width,
            height: Get.height,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(KHelper.btnRadius),
                ),
              ),
            ),
          ),
        if (isLoading) Positioned(child: CircularProgressIndicator())
      ],
    );
  }
}

class KRequestOverlay extends StatelessWidget {
  final Widget? child;
  final Widget? loader;
  final bool isLoading;
  final String? error;
  final void Function()? onTryAgain;
  const KRequestOverlay({Key? key, this.child, required this.isLoading, this.error, this.onTryAgain, this.loader}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (!isLoading) child ?? SizedBox(width: Get.width, height: Get.height),
          if (isLoading)
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
              child: Center(
                child: Container(
                  color: Colors.transparent,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      if (loader != null)
                        loader!
                      else ...[
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: CircularProgressIndicator(strokeWidth: 2, backgroundColor: KColors.of(context).accentColor),
                        ),
                      ]
                    ],
                  ),
                ),
              ),
            ),
          if (error != null) KErrorView(error: error, onTryAgain: onTryAgain)
        ],
      ),
    );
  }
}
