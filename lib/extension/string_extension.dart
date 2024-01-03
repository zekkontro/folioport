import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

extension StringExtension on String {
  toSvgAsset({Color? color, double? width, double? height}) {
    return SvgPicture.asset(
      this,
      colorFilter: color == null
          ? null
          : ColorFilter.mode(
              color,
              BlendMode.srcIn,
            ),
      width: width,
      height: height,
    );
  }
}
