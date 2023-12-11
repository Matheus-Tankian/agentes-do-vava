import 'package:flutter/material.dart';
import 'package:vava/src/core/app_colors.dart';
import 'package:vava/src/core/app_images.dart';
import 'package:vava/src/widgets/power_card.dart';
import 'package:vava/src/widgets/section_text.dart';

class HomeDetailView extends StatefulWidget {
  const HomeDetailView({super.key});

  @override
  State<HomeDetailView> createState() => _HomeDetailViewState();
}

class _HomeDetailViewState extends State<HomeDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.viperColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 190,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.viperColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Image.asset(
                AppImages.viper,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  const SectionText(
                    title: 'BIOGRAPHY',
                  ),
                  Text(
                    'A phantom of a memory. Omen hunts in the shadows. He renders enemies blind, teleports across the field.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 15, color: AppColors.colorWhite),
                  ),
                  const SizedBox(height: 20),
                  const SectionText(
                    title: 'SPECEIAL ABILITIES',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 26),
                    child: PowerCard(
                      imagem: AppImages.power,
                      title: 'PARANOIA',
                      subtitle: 'Shadow power',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
