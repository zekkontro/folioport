import 'package:flutter/material.dart';
import 'package:folioport/themes/themes.dart';
import 'package:folioport/viewmodels/json_data_viewmodel.dart';
import 'package:folioport/widgets/blog_widget.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

class BlogsView extends StatelessWidget {
  const BlogsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Consumer<JsonDataViewmodel>(builder: (context, notifier, child) {
        return SizedBox(
          width: context.sized.width,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.sized.dynamicWidth(0.15)),
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
                ...notifier.jsonDataModel.mediumBlogs.map((e) => BlogWidget(
                    isSecondaryColor: notifier.jsonDataModel.mediumBlogs.indexOf(e) % 2 == 0,
                    blogModel: e))
              ],
            ),
          ),
        );
      });
    });
  }
}
