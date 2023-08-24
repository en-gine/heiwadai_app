import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';

enum FormType {
  text,
  ruby,
  number,
  phone,
  email,
  password,
  date,
  multiline,
}

Map<FormType, TextInputType?> _keyboard = {
  FormType.text: TextInputType.text,
  FormType.ruby: TextInputType.text,
  FormType.number: TextInputType.number,
  FormType.phone: TextInputType.phone,
  FormType.email: TextInputType.emailAddress,
  FormType.password: TextInputType.visiblePassword,
  FormType.date: TextInputType.datetime,
  FormType.multiline: TextInputType.multiline,
};

Map<FormType, List<TextInputFormatter>?> _formatters = {
  FormType.text: null,
  FormType.ruby: [
    FilteringTextInputFormatter.allow(
      RegExp(r'[ぁ-ん]'),
    ),
  ],
  FormType.number: [
    FilteringTextInputFormatter.allow(
      RegExp(r'[0-9]+'),
    ),
  ],
  FormType.phone: [
    FilteringTextInputFormatter.allow(
      RegExp(r'[0-9]+'),
    ),
  ],
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
  FormType.date: [
    FilteringTextInputFormatter.allow(
      RegExp(r'[0-9/]+'),
    ),
  ],
  FormType.multiline: null,
};

class TextInputField extends HookWidget {
  const TextInputField(
    this.label, {
    super.key,
    this.hint,
    this.errorText,
    this.type = FormType.text,
    this.onChanged,
    this.onSaved,
  });
  final String label;
  final String? hint;
  final String? errorText;
  final FormType type;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    final isObscure = useState(true);
    final TextEditingController controller = TextEditingController();

    Map<FormType, Widget?> suffix = {
      FormType.text: null,
      FormType.ruby: null,
      FormType.number: null,
      FormType.phone: null,
      FormType.email: null,
      FormType.password: IconButton(
        icon: SvgPicture.asset(
          isObscure.value
              ? 'assets/icons/visibility_on.svg'
              : 'assets/icons/visibility_off.svg',
        ),
        onPressed: () {
          isObscure.value = !isObscure.value;
        },
      ),
      FormType.date: const Icon(Icons.calendar_today, color: Colors.black),
      FormType.multiline: null,
    };

    return TextFormField(
      readOnly: (type == FormType.date),
      controller: controller,
      obscureText: (type == FormType.password) ? isObscure.value : false,
      keyboardType: _keyboard[type],
      inputFormatters: _formatters[type],
      maxLines: (type == FormType.multiline) ? null : 1,
      minLines: (type == FormType.multiline) ? 7 : 1,
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
        suffixIcon: suffix[type],
      ),
      onChanged: onChanged,
      onSaved: onSaved,
      onTap: (type != FormType.date)
          ? null
          : () async {
              // DateTime? picked = await showDatePicker(
              //   context: context,
              //   initialDate:
              //       DateTime.now().subtract(const Duration(days: 35 * 365)),
              //   firstDate:
              //       DateTime.now().subtract(const Duration(days: 120 * 365)),
              //   lastDate:
              //       DateTime.now().subtract(const Duration(days: 10 * 365)),
              //   locale: const Locale('ja'),
              //   builder: (context, child) => Theme(
              //       data: ThemeData.light().copyWith(
              //         colorScheme: const ColorScheme.light().copyWith(
              //           primary: const Color(0xFF3D3D3D),
              //         ),
              //       ),
              //       child: child!,
              //     )
              // );
              // String? formatedDate;
              // try {
              //   formatedDate = DateFormat('yyyy/MM/dd').format(picked!);
              // } catch (_) {}
              // if (formatedDate != null) controller.text = formatedDate;

              DatePicker.showDatePicker(
                context,
                currentTime:
                    DateTime.now().subtract(const Duration(days: 35 * 365)),
                minTime:
                    DateTime.now().subtract(const Duration(days: 120 * 365)),
                maxTime:
                    DateTime.now().subtract(const Duration(days: 10 * 365)),
                locale: LocaleType.jp,
                onConfirm: (date) {
                  String? formatedDate;
                  try {
                    formatedDate = DateFormat('yyyy/MM/dd').format(date);
                  } catch (_) {}
                  if (formatedDate != null) controller.text = formatedDate;
                },
              );
            },
    );
  }
}
