import 'package:flutter/material.dart';

class KIconButton extends StatelessWidget {
  const KIconButton({Key? key, this.onPressed, required this.child, this.radius, this.isLoading = false}) : super(key: key);
  final void Function()? onPressed;
  final Widget child;
  final double? radius;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: radius ?? 30,
      height: radius ?? 30,
      child: isLoading!
          ? const SizedBox(
              height: 15,
              width: 15,
              child: Center(child: Padding(padding: EdgeInsets.all(8.0), child: CircularProgressIndicator())),
            )
          : RawMaterialButton(
              onPressed: onPressed,
              shape: const StadiumBorder(),
              child: child,
            ),
    );
  }
}