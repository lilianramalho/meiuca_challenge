import 'package:flutter/material.dart';
import 'package:meiuca_challenge/src/tokens/colors/neutral_colors.dart';
import 'package:meiuca_challenge/src/tokens/fonts/font_size.dart';
import 'package:meiuca_challenge/src/tokens/fonts/line_height.dart';
import 'package:meiuca_challenge/src/tokens/fonts/meiuca_font_weight.dart';

class Paragraph extends StatelessWidget {
  const Paragraph({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: FontSize.fontSizeXS,
          height: LineHeight.distant,
          color: NeutralColors.colorNeutral02,
          fontWeight: MeiucaFontWeight.fontWeightRegular),
    );
  }
}