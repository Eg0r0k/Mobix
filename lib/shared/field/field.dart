import 'package:flutter/material.dart';
import '../../app/app_theme.dart';
class CustomField extends StatelessWidget {
  final String textHold;
  final bool autocorrect;
  final bool obscureText;
  final bool enableSuggestions;
  const CustomField(
      {super.key,
      required this.textHold,
      this.autocorrect = false,
      this.obscureText = false,
      this.enableSuggestions = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: obscureText,
        enableSuggestions: enableSuggestions,
        autocorrect: autocorrect,
        decoration: InputDecoration(
          hintText: textHold,
          focusedBorder: OutlineInputBorder(
              borderSide: CustomFieldTheme.focusedBorderSide,
              borderRadius: CustomFieldTheme.borderRadius),
          enabledBorder: OutlineInputBorder(
              borderSide: CustomFieldTheme.enabledBorderSide,
              borderRadius: CustomFieldTheme.borderRadius),
          fillColor: CustomFieldTheme.fillColor,
          filled: true,
        ),
      ),
    );
  }
}
