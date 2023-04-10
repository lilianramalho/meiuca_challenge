import 'package:flutter/material.dart';
import 'package:meiuca_challenge/src/tokens/borders/meiuca_border_radius.dart';
import 'package:meiuca_challenge/src/tokens/colors/band_colors.dart';
import 'package:meiuca_challenge/src/tokens/colors/neutral_colors.dart';
import 'package:meiuca_challenge/src/tokens/fonts/font_size.dart';
import 'package:meiuca_challenge/src/tokens/fonts/line_height.dart';
import 'package:meiuca_challenge/src/tokens/fonts/meiuca_font_weight.dart';
import 'package:meiuca_challenge/src/tokens/spacing/spacing_squish.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary(
      {super.key,
      required this.width,
      required this.height,
      required this.text});
  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: SpacingSquish.xs,
        decoration:const BoxDecoration(
          color: BrandColors.colorBrandPrimary03,
          borderRadius: MeiucaBorderRadius.none,
        ),
        width: width,
        height: height,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: FontSize.fontSizeSM,
            height: LineHeight.tight,
            color: NeutralColors.colorNeutral02,
            fontWeight: MeiucaFontWeight.fontWeightMedium,
          ),
        ),
      ),
    );
  }
}
