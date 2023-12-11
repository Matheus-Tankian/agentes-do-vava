import 'package:flutter/material.dart';
import 'package:vava/src/core/app_colors.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Todos os direito reservado a RIOT',
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: AppColors.colorWhite,
              fontSize: 20,
            ),
      ),
    );
  }
}
