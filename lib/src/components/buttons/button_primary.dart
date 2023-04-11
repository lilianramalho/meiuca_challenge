import 'package:flutter/material.dart';
import 'package:meiuca_challenge/src/tokens/global/borders/meiuca_border_radius.dart';
import 'package:meiuca_challenge/src/tokens/colors/band_colors.dart';
import 'package:meiuca_challenge/src/tokens/colors/neutral_colors.dart';
import 'package:meiuca_challenge/src/tokens/fonts/font_size.dart';
import 'package:meiuca_challenge/src/tokens/global/fonts/brand_font_weight.dart';
import 'package:meiuca_challenge/src/tokens/global/spacing/spacing_squish.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            SpacingSquish.xs,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: MeiucaBorderRadius.none,
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return BrandColors.colorBrandPrimary02;
              }
              return BrandColors
                  .colorBrandPrimary03; // Defer to the widget's default.
            },
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: NeutralColors.colorNeutral05,
              fontWeight: BrandFontWeight.fontWeightMedium,
              fontSize: FontSize.fontSizeSM),
        ));
  }
}
