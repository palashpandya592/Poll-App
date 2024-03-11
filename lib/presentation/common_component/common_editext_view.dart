import 'package:flutter/material.dart';

/// A customizable text input field widget.
class TextInputField extends StatelessWidget {
  final String errorText;
  final String hintText;
  final VoidCallback? onTap;
  final Function(String?)? onChanged;
  final TextInputType textInputType;
  final TextEditingController controller;

  /// Constructs a [TextInputField].
  const TextInputField({
    super.key,
    required this.controller,
    required this.errorText,
    required this.hintText,
    this.onTap,
    this.onChanged,
    this.textInputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Text input field wrapped with rounded border
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(60.0)),
          child: SizedBox(
            height: 50,
            child: TextFormField(
              controller: controller,
              onTap: onTap,
              keyboardType: textInputType,
              autofocus: false,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                border: InputBorder.none,
                filled: true,
                hintText: hintText,
              ),
              onChanged: onChanged,
            ),
          ),
        ),

        /// Display error text if present
        Visibility(
          visible: errorText.isNotEmpty,
          child: Container(
            margin: const EdgeInsets.only(left: 18, top: 5),
            alignment: Alignment.centerLeft,
            child: Text(
              errorText,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
