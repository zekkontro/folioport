import 'package:flutter/material.dart';
import 'package:folioport/themes/themes.dart';
import 'package:kartal/kartal.dart';

class BlogWidget extends StatelessWidget {
  final bool isSecondaryColor;
  const BlogWidget({super.key, required this.isSecondaryColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.sized.dynamicHeight(0.3),
      decoration: BoxDecoration(
          color: isSecondaryColor
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Row(
          children: [
            Image.network(
                "https://miro.medium.com/v2/resize:fit:1400/format:webp/1*SzCoT2awzCHyWbF7bFqYKw.png"),
            SizedBox(
              width: context.sized.dynamicWidth(0.08),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "APR 22 - 5 MIN READ",
                    style: AppTheme.getBodySmall(context).copyWith(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "How to become a developer and get your first job as quickly as possible",
                    style: AppTheme.getBodyMedium(context).copyWith(
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Have you ever thought about becoming a software developer or looking for a change of career? This article will give you a solid plan to get",
                    style: AppTheme.getBodySmall(context)
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
