import 'package:flutter/material.dart';
import 'package:meiuca_challenge/src/components/buttons/button_primary.dart';
import 'package:meiuca_challenge/src/components/shape/shape.dart';
import 'package:meiuca_challenge/src/components/texts/heading_small.dart';
import 'package:meiuca_challenge/src/components/texts/paragraph.dart';
import 'package:meiuca_challenge/src/components/texts/subtitle_small.dart';
import 'package:meiuca_challenge/src/tokens/global/spacing/spacing_stack.dart';

class MeiucaCard extends StatelessWidget {
  const MeiucaCard(
      {super.key,
      required this.heading,
      required this.subtitle,
      required this.text,
      required this.labelButton});
  final String heading;
  final String subtitle;
  final String text;
  final String labelButton;

  @override
  Widget build(BuildContext context) {
    return Shape(
        content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingSmall(text: heading),
        SpacingStack.xxxs,
        SubtitleSmall(text: subtitle),
        SpacingStack.xxs,
        Paragraph(text: text),
        SpacingStack.md,
        ButtonPrimary(text: labelButton),
      ],
    ));
  }
}
