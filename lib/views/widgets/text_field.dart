import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_business_square/shared/theme/theme_data.dart';

import '../../shared/theme/colors.dart';
import '../../shared/theme/text_theme.dart';

class KTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Widget? suffixIcon, prefixIcon;
  final String? hintText, errorText;
  final bool autofocus, enabled, expanded;
  final double? kWidth, height;
  final int? maxLines;
  final bool obscureText;
  final String? initVal;
  final TextStyle? style;
  final bool filled;
  final bool showTitle;
  final List<TextInputFormatter>? formatter;
  final void Function()? onTap;
  final bool isPhone;

  const KTextFormField({
    super.key,
    this.controller,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
    this.hintText,
    this.onTap,
    this.errorText,
    this.keyboardType,
    this.onChanged,
    this.autofocus = false,
    this.prefixIcon,
    this.enabled = true,
    this.kWidth,
    this.height,
    this.maxLines,
    this.formatter,
    this.expanded = false,
    this.filled = false,
    this.showTitle = true,
    this.initVal,
    this.style,
    this.isPhone = false,
  });

  @override
  State<KTextFormField> createState() => _KTextFormFieldState();
}

class _KTextFormFieldState extends State<KTextFormField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.hintText != null && widget.showTitle) Text(widget.hintText!, style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
        SizedBox(height: 10),
        TextFormField(
          inputFormatters: widget.formatter,
          keyboardAppearance: Theme.of(context).brightness,
          keyboardType: widget.keyboardType,
          controller: widget.controller,
          autofocus: widget.autofocus,
          enabled: widget.enabled,
          onTap: widget.onTap,
          expands: widget.expanded,
          initialValue: widget.controller == null ? widget.initVal : null,
          cursorColor: KColors.of(context).cursor,
          validator: widget.validator,
          onChanged: widget.onChanged,
          obscureText: widget.obscureText ? !showPassword : false,
          style: widget.style ?? KTextStyle.of(context).body,
          maxLines: widget.maxLines ?? (widget.obscureText ? 1 : null),
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          decoration: InputDecoration(
            // hintText: widget.hintText,
            filled: widget.filled,
            border: widget.filled ? KThemeData.filledInputBorder : null,
            disabledBorder: widget.filled ? KThemeData.filledInputBorder : null,
            enabledBorder: widget.filled ? KThemeData.filledInputBorder : null,
            errorBorder: widget.filled ? KThemeData.filledInputBorder : null,
            focusedBorder: widget.filled ? KThemeData.filledInputBorder : null,
            focusedErrorBorder: widget.filled ? KThemeData.filledInputBorder : null,
            fillColor: widget.filled ? KColors.of(context).textField : Colors.transparent,
            // hintStyle: KTextStyle.of(context).hint,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
            errorStyle: KTextStyle.of(context).error,
            errorText: widget.errorText,
            suffixIcon: widget.obscureText
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      !showPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      color: Color(0xff002036),
                    ),
                  )
                : widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            isDense: false,
          ),
        ),
      ],
    );
  }
}
