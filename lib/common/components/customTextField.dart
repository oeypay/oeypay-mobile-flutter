import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? initialValue;
  final int? maxlength;
  final bool isPassword;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconPressed;
  final bool readOnly;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final Color? focusedErrorBorderColor;
  final Color? errorBorderColor;
  final ValueChanged<String>? onChange;

  const CustomTextFormField({
    Key? key,
    this.labelText,
    this.hintText,
    this.initialValue,
    this.maxlength,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixIconPressed,
    this.readOnly = false,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.focusedErrorBorderColor,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxlength,
      controller: controller,
      obscureText: isPassword,
      validator: validator,
      keyboardType: keyboardType,
      readOnly: readOnly,
      onChanged: onChange,
      initialValue: initialValue,
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: suffixIcon != null
              ? IconButton(
                  icon: Icon(
                    suffixIcon,
                    color: Colors.black,
                  ),
                  onPressed: onSuffixIconPressed,
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: focusedErrorBorderColor ?? ColorName.yellowColor),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: enabledBorderColor ?? Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: focusedBorderColor ?? ColorName.yellowColor),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: errorBorderColor ?? ColorName.yellowColor),
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
