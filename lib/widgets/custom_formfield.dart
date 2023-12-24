import 'package:flutter/material.dart';
import 'package:pedidos_app/styles/global_colors.dart';

import '../styles/text_styles.dart';

class CustomFormField extends StatefulWidget {
  final String label;
  final String hintText;

  final bool passwordFiedl;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final TextEditingController controller;
  final int maxLines;

  const CustomFormField({
    Key? key,
    required this.label,
    required this.hintText,
    this.suffixIcon,
    required this.textInputType,
    required this.textInputAction,
    required this.controller,
    required this.maxLines,
    this.passwordFiedl = false,
  }) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 10,
          ),
          child: Text(
            widget.label,
            style: KTextStyle.textFieldHeading,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            color: GlobalColors.grayshade,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: TextField(
              maxLines: widget.maxLines,
              controller: widget.controller,
              textInputAction: widget.textInputAction,
              keyboardType: widget.textInputType,
              obscureText: obscureText,
              decoration: InputDecoration(
                  hintText: widget.hintText,
                  hintStyle: KTextStyle.textFieldHintStyle,
                  border: InputBorder.none,
                  suffixIcon: widget.passwordFiedl
                      ? IconButton(
                          icon: obscureText
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          })
                      : widget.suffixIcon),
            ),
          ),
        )
      ],
    );
  }
}
