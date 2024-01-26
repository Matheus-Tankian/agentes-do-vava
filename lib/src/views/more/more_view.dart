import 'package:flutter/material.dart';
import 'package:vava/src/core/app_colors.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.2),
        Center(
          child: Text(
            'All rights reserved to RIOT.',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColors.colorWhite,
                  fontSize: 20,
                ),
          ),
        ),
      ],
    );
  }
}
