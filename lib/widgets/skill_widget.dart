import 'package:flutter/material.dart';
import 'package:folioport/themes/themes.dart';

class SkillWidget extends StatelessWidget {
  final String text;
  const SkillWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         CircleAvatar(
          radius: 4,
          backgroundColor: AppTheme.getBodyMedium(context).color,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: AppTheme.getBodyMedium(context).copyWith(fontSize: 18, fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
