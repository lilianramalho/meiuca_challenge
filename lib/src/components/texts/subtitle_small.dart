import 'package:flutter/material.dart';
import 'package:meiuca_challenge/src/tokens/brand/colors/neutral_colors.dart';
import 'package:meiuca_challenge/src/tokens/brand/fonts/font_size.dart';
import 'package:meiuca_challenge/src/tokens/brand/fonts/line_height.dart';
import 'package:meiuca_challenge/src/tokens/global/fonts/brand_font_weight.dart';

class SubtitleSmall extends StatelessWidget {
  const SubtitleSmall({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: FontSize.fontSizeMD,
          height: LineHeight.medium,
          fontWeight: BrandFontWeight.fontWeightMedium,
          color: NeutralColors.colorNeutral02),
    );
  }
}
