import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.title,
    this.onTap,
    this.textStyle,
  });

  final String title;
  final Function()? onTap;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
