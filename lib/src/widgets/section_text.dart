import 'package:flutter/material.dart';
import 'package:vava/src/core/app_colors.dart';

class SectionText extends StatelessWidget {
  const SectionText({
    super.key,
    required this.title,
    this.style,
    this.pointSize = 14,
    this.pointColor,
  });

  final String title;
  final TextStyle? style;
  final double? pointSize;
  final Color? pointColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: pointSize,
          width: pointSize,
          decoration: BoxDecoration(
            color: pointColor ?? AppColors.colorWhiteText,
            borderRadius: const BorderRadius.all(Radius.circular(50)),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: style ??
              Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppColors.colorWhite,
                    fontSize: 18,
                  ),
        ),
      ],
    );
  }
}
