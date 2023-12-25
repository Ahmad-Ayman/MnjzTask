import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.autovalidateMode,
    this.validator,
    this.onChange,
    this.isObscure,
    this.hint,
    this.textInputType,
    required this.controller,
    this.onSaved,
    this.onEditComplete,
    this.textAlign,
    this.suffixIcon,
    this.fillColor = const Color(0xFF211F30),
    this.borderRadius = 0,
    this.prefixIcon,
    this.borderColor,
  }) : super(key: key);
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final void Function()? onEditComplete;
  final Function(String?)? onChange;
  final bool? isObscure;
  final String? hint;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final FormFieldSetter<String>? onSaved;
  final TextAlign? textAlign;
  final Widget? suffixIcon;
  final Color fillColor;
  final double borderRadius;
  final Widget? prefixIcon;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          autovalidateMode: autovalidateMode,
          onSaved: onSaved,
          textAlign: textAlign ?? TextAlign.start,
          onChanged: onChange,
          validator: validator,
          controller: controller,
          obscureText: isObscure ?? false,
          onEditingComplete: onEditComplete,
          keyboardType: textInputType,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 1, color: borderColor ?? fillColor),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: fillColor),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              fillColor: fillColor,
              filled: true,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
              border: const OutlineInputBorder(),
              hintText: hint,
              hintStyle: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.grey)),
        ));
  }
}
