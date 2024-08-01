import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/space.dart';
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

class CustomTextField extends StatefulWidget {
  final String? labelText, hintText, initialValue, iconSvg;
  final int? maxlength;
  final bool isPassword;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconPressed;
  final bool? readOnly, hideIconLeft;
  final Color? enabledBorderColor,
      errorBorderColor,
      focusedBorderColor,
      colorIconSvg,
      focusedErrorBorderColor;
  final ValueChanged<String>? onChange;

  const CustomTextField({
    Key? key,
    this.labelText,
    this.hintText,
    this.initialValue,
    this.maxlength,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.iconSvg,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.colorIconSvg,
    this.onSuffixIconPressed,
    this.readOnly = false,
    this.hideIconLeft = true,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.focusedErrorBorderColor,
    this.onChange,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? _errorMessage;
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    _controller =
        widget.controller ?? TextEditingController(text: widget.initialValue);
    _focusNode = FocusNode();

    _controller.addListener(_updateText);
    _focusNode.addListener(_updateFocus);
  }

  @override
  void dispose() {
    _controller.removeListener(_updateText);
    _focusNode.removeListener(_updateFocus);
    if (widget.controller == null) {
      _controller.dispose();
    }
    _focusNode.dispose();
    super.dispose();
  }

  void _updateText() {
    setState(() {
      _hasText = _controller.text.isNotEmpty;
      _errorMessage = widget.validator?.call(_controller.text);
    });
  }

  void _updateFocus() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorName.yellowSmoth,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.only(
              top: 10,
              bottom: (_focusNode.hasFocus || _hasText) ? 0 : 10,
              left: 0),
          child: Row(
            children: [
              const SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.only(
                    bottom: (_focusNode.hasFocus || _hasText) ? 10 : 0),
                child: SvgPicture.asset(
                  widget.iconSvg != null
                      ? 'assets/icons/${widget.iconSvg}'
                      : 'assets/icons/hp.svg',
                  color: widget.colorIconSvg ?? Colors.black54,
                  width: 15,
                ),
              ),
              Space(8),
              Expanded(
                child: TextFormField(
                  focusNode: _focusNode,
                  maxLength: widget.maxlength,
                  controller: _controller,
                  obscureText: widget.isPassword,
                  keyboardType: widget.keyboardType,
                  readOnly: widget.readOnly!,
                  onChanged: widget.onChange,
                  decoration: InputDecoration(
                    labelText: widget.labelText,
                    hintText: widget.hintText,
                    hintStyle: TextStyle(fontSize: 11),
                    isDense: true,
                    prefixIcon: widget.prefixIcon != null
                        ? Icon(widget.prefixIcon)
                        : null,
                    suffixIcon: widget.suffixIcon != null
                        ? IconButton(
                            icon: Icon(
                              widget.suffixIcon,
                              color: Colors.black,
                            ),
                            onPressed: widget.onSuffixIconPressed,
                          )
                        : null,
                    contentPadding: EdgeInsets.only(
                        bottom: 0,
                        top: (_focusNode.hasFocus || _hasText) ? 22 : 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.focusedErrorBorderColor ??
                              const Color(0xFFFFD700)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.enabledBorderColor ?? Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.focusedBorderColor ??
                              const Color(0xFFFFD700)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.errorBorderColor ??
                              const Color(0xFFFFD700)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_focusNode.hasFocus || _hasText)
          if (_errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                "*${_errorMessage!}",
                style: const TextStyle(color: Colors.black, fontSize: 10),
              ),
            ),
        Space(20)
      ],
    );
  }
}
