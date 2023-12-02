import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Widget? label;
  final Widget? icon;
  final Widget? prefix;
  final bool obscureText;
  final Widget? suffix;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputType? keyboardType;
  final AutovalidateMode? autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextInputAction textInputAction;
  final void Function(String?)? onSaved;
  final Color? backgroundColor;
  const AppTextFormField({
    required this.hintText,
    this.controller,
    this.label,
    this.icon,
    this.prefix,
    this.suffix,
    this.contentPadding,
    this.keyboardType,
    this.autovalidateMode,
    this.inputFormatters,
    this.validator,
    this.onSaved,
    this.backgroundColor,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    super.key,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      autovalidateMode: widget.autovalidateMode,
      inputFormatters: widget.inputFormatters,
      validator: widget.validator,
      obscureText: widget.obscureText,
      textInputAction: widget.textInputAction,
      onSaved: widget.onSaved,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        fillColor: widget.backgroundColor,
        contentPadding: widget.contentPadding,
        hintText: widget.hintText,
        label: widget.label,
        icon: widget.icon,
        prefix: widget.prefix,
        suffixIcon: widget.suffix,
        suffixIconColor: MaterialStateColor.resolveWith(
          (states) => states.contains(MaterialState.focused)
              ? theme.primaryColor
              : Colors.grey,
        ),
      ),
    );
  }
}
