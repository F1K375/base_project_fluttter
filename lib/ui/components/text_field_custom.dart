import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../../config/theme/app_colors.dart';
import '../../config/theme/app_text_style.dart';

class TextFieldCustom extends StatefulWidget {
  final String? initial;
  final String? labelText;
  final String? hintText;
  final ValueChanged<String> onChange;
  final Icon? icon;
  final Icon? leftIcon;
  final bool isPassword;
  final String? errorText;
  final String? helperText;
  final FormFieldValidator<String>? validator;
  final TextInputType inputType;
  final VoidCallback? onIconPress;
  final TextEditingController? controller;
  final bool enable;
  final int minLines;
  final VoidCallback? onTap;
  final double borderRadius;
  final bool isFillColor;

  const TextFieldCustom(
      {Key? key,
      required this.onChange,
      this.icon,
      this.leftIcon,
      this.labelText,
      this.initial,
      this.hintText,
      this.errorText,
      this.helperText,
      this.isPassword = false,
      this.validator,
      this.inputType = TextInputType.text,
      this.onIconPress,
      this.controller,
      this.enable = true,
      this.onTap,
      this.minLines = 1,
      this.borderRadius = 8,
      this.isFillColor = false})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TextFieldCustom();
}

class _TextFieldCustom extends State<TextFieldCustom> {
  bool isTextHide = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyle.defaultTheme(context).bodyLarge?.copyWith(
          fontWeight: widget.enable ? FontWeight.w400 : FontWeight.w500,
          color: widget.enable ? AppColor.black : AppColor.black.shade50),
      onTap: widget.onTap,
      initialValue: widget.initial,
      obscureText: widget.isPassword ? isTextHide : false,
      decoration: InputDecoration(
        filled: widget.isFillColor,
        fillColor: Colors.grey.shade50,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        helperText: widget.helperText,
        errorText: widget.errorText,
        labelText: widget.labelText,
        labelStyle: TextStyle(
            color: widget.enable
                ? AppColor.black.shade500
                : AppColor.black.shade50),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.2, color: AppColor.black)),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.2, color: Colors.grey.shade400)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius),
          ),
        ),
        prefixIcon: widget.leftIcon,
        suffixIcon: widget.icon != null
            ? IconButton(
                icon: widget.isPassword
                    ? (isTextHide
                        ? const Icon(EvaIcons.eye)
                        : const Icon(EvaIcons.eyeOff))
                    : widget.icon!,
                onPressed: () {
                  setState(() {
                    if (widget.onIconPress != null) {
                      widget.onIconPress!();
                    }
                    if (widget.isPassword) {
                      isTextHide = isTextHide ? false : true;
                    }
                  });
                },
              )
            : null,
        hintText: widget.hintText,
        alignLabelWithHint: true,
      ),
      keyboardType: widget.inputType,
      onChanged: widget.onChange,
      validator: widget.validator,
      controller: widget.controller,
      enabled: widget.enable,
      minLines: widget.minLines,
      maxLines: widget.isPassword ? 1 : null,
    );
  }
}
