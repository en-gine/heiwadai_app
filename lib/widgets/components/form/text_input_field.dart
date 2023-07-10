import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum FormType {
  text,
  email,
  password,
}

Map<FormType, TextInputType?> _keyboard = {
  FormType.text: TextInputType.text,
  FormType.email: TextInputType.emailAddress,
  FormType.password: TextInputType.visiblePassword,
};

Map<FormType, List<TextInputFormatter>?> _formatters = {
  FormType.text: null,
  FormType.email: [
    FilteringTextInputFormatter.allow(
      RegExp(r'[a-zA-Z0-9@._+-]+'),
    ),
  ],
  FormType.password: [
    FilteringTextInputFormatter.allow(
      RegExp(r'[a-zA-Z0-9@.+*_~/,!#$%&-]+'),
    ),
  ],
};

class TextInputField extends StatelessWidget {
  const TextInputField(
    this.label, {
    super.key,
    this.hint,
    this.obscureText = false,
    this.errorText,
    this.type = FormType.text,
    this.suffixIcon,
    this.onChanged,
    this.onSaved,
  });
  final String label;
  final String? hint;
  final bool obscureText;
  final String? errorText;
  final FormType type;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: _keyboard[type],
      inputFormatters: _formatters[type],
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Color(0xFFB3B3B3)),
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xFFB3B3B3)),
        errorText: errorText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFDADADA)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFDADADA)),
        ),
        filled: true,
        fillColor: Colors.white,
        isDense: true,
        suffixIcon: suffixIcon,
      ),
      onChanged: onChanged,
      onSaved: onSaved,
    );
  }
}
