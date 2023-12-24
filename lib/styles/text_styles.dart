import 'package:flutter/material.dart';

import 'global_colors.dart';

class KTextStyle {
  static const headerTextStyle = TextStyle(
      color: GlobalColors.whiteshade,
      fontSize: 28,
      fontWeight: FontWeight.w700);

  static const textFieldHeading =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);

  static const textFieldHintStyle = TextStyle(
      color: GlobalColors.hintText, fontSize: 14, fontWeight: FontWeight.w500);

  static const authButtonTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: GlobalColors.whiteshade);
}
