import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget(
      {super.key,
      this.initialValue,
      required this.labelText,
      required this.hintText,
      this.obscureText = false,
      this.suffixIcon,
      required this.validator});

  final String? initialValue;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final FormFieldValidator<String> validator;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        maxLines: 1,
        initialValue: initialValue,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2.0,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2.0,
            ),
          ),
          hintText: hintText,
          labelText: labelText,
          suffixIcon: suffixIcon,
        ),
        validator: validator,
      ),
    );
  }
}