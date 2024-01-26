import 'package:flutter/material.dart';
import 'package:vava/src/core/app_colors.dart';
import 'package:vava/src/core/app_images.dart';

class NewOneView extends StatelessWidget {
  const NewOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              AppImages.viper,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'VIPER',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppColors.colorWhite,
                    fontSize: 30,
                  ),
            ),
            Text(
              'Controllar',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}
