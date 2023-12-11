import 'package:flutter/material.dart';
import 'package:vava/src/core/app_colors.dart';

class PowerCard extends StatelessWidget {
  const PowerCard({
    super.key,
    required this.imagem,
    required this.title,
    required this.subtitle,
  });

  final String imagem;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: AppColors.secundaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 10),
          Image.asset(
            imagem,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 15,
                      color: AppColors.colorWhite,
                    ),
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 15,
                      color: AppColors.colorWhite,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
