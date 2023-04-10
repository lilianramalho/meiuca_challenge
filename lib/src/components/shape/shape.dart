import 'package:flutter/material.dart';
import 'package:meiuca_challenge/src/tokens/borders/border_width.dart';
import 'package:meiuca_challenge/src/tokens/borders/meiuca_border_radius.dart';
import 'package:meiuca_challenge/src/tokens/colors/neutral_colors.dart';
import 'package:meiuca_challenge/src/tokens/spacing/stpacing_inset.dart';

class Shape extends StatelessWidget {
  const Shape({super.key, required this.content});
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: SpacingInset.lg,
      decoration: BoxDecoration(
          color: NeutralColors.colorNeutral05,
          borderRadius: MeiucaBorderRadius.none,
          border: Border.all(
            color: NeutralColors.colorNeutral04,
            width: BorderWidths.thin,
          )),
      child: content,
    );
  }
}
