import 'package:flutter/material.dart';
import 'package:folioport/themes/themes.dart';
import 'package:folioport/widgets/blog_widget.dart';
import 'package:kartal/kartal.dart';

class BlogsView extends StatelessWidget {
  const BlogsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.sized.width,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: context.sized.dynamicWidth(0.15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Medium Blogs",
              style: AppTheme.getBodyMedium(context),
            ),
            SizedBox(
              height: context.sized.dynamicHeight(0.1),
            ),
            ...List<Widget>.generate(
                3, (index) => BlogWidget(isSecondaryColor: index % 2 == 0))
          ],
        ),
      ),
    );
  }
}
