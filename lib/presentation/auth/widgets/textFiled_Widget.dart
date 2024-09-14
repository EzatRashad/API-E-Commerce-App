import 'package:flutter/material.dart';

import '/core/themes/colors.dart';
import '../../widgets/text_widget.dart';

class TextFiledW extends StatefulWidget {
  const TextFiledW(
      {super.key,
      required this.label,
      required this.controller,
      this.validator,
      this.obscure = false,
      this.suffex,
      this.type = TextInputType.text});

  final String label;
  final bool obscure;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget? suffex;
  final TextInputType? type;

  @override
  State<TextFiledW> createState() => _TextFiledWState();
}

class _TextFiledWState extends State<TextFiledW> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(widget.label,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColors.grey,
                )),
        TextFormField(
          cursorColor: AppColors.green,
          keyboardType: widget.type,
          validator: widget.validator,
          controller: widget.controller,
          obscureText: widget.obscure,
          decoration: InputDecoration(
            suffixIcon: widget.suffex,
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.green)),
            border: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey)),
          ),
        ),
      ],
    );
  }
}
