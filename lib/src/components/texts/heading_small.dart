import 'package:flutter/material.dart';
import 'package:meiuca_challenge/src/tokens/brand/colors/neutral_colors.dart';
import 'package:meiuca_challenge/src/tokens/brand/fonts/font_size.dart';
import 'package:meiuca_challenge/src/tokens/brand/fonts/line_height.dart';

class HeadingSmall extends StatelessWidget {
  const HeadingSmall({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: FontSize.fontSizeLG,
          height: LineHeight.distant,
          fontWeight: FontWeight.bold,
          color: NeutralColors.colorNeutral01),
    );
  }
}
