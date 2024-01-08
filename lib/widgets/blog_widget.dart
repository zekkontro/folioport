import 'package:flutter/material.dart';
import 'package:folioport/model/medium_blog_model.dart';
import 'package:folioport/themes/themes.dart';
import 'package:kartal/kartal.dart';

class BlogWidget extends StatelessWidget {
  final MediumBlogModel blogModel;
  final bool isSecondaryColor;
  const BlogWidget(
      {super.key, required this.isSecondaryColor, required this.blogModel});

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
            Image.network(blogModel.coverImageLink),
            SizedBox(
              width: context.sized.dynamicWidth(0.08),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    blogModel.publishDate.toUpperCase(),
                    style: AppTheme.getBodySmall(context).copyWith(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    blogModel.title,
                    style: AppTheme.getBodyMedium(context).copyWith(
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    blogModel.description,
                    overflow: TextOverflow.ellipsis,
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
