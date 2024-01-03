import 'package:flutter/material.dart';
import 'package:folioport/themes/themes.dart';

class SectionTile extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const SectionTile({
    super.key, required this.text, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: AppTheme.getBodyMedium(context)
            .copyWith(fontSize: 16),
      ),
    );
  }
}
