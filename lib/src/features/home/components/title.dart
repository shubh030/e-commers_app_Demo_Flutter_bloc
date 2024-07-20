import 'package:coditron_app/src/constants/app_sizes.dart';
import 'package:coditron_app/src/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle(
      {super.key,
      required this.title,
      required this.widget,
      required this.size});

  final String title;
  final double widget;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: size,
              ),
        ),
        gapH4,
        Container(
          height: 2,
          width: widget,
          color: AppColor.primaryColor,
        )
      ],
    );
  }
}
