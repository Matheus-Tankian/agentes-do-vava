import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:vava/src/core/app_colors.dart';
import 'package:vava/src/core/app_icons.dart';
import 'package:vava/src/core/app_images.dart';
import 'package:vava/src/views/home/home_viewmodel.dart';
import 'package:vava/src/widgets/button_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (_) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (_, provider, __) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcons.logo,
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    'Choose your',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Center(
                  child: Text(
                    'awesome agent',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(height: 6),
                //menu
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: ButtonList(),
                ),
                //menu
                //Lista
                const SizedBox(height: 30),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          log('card');
                        },
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipPath(
                              clipper: RoundedDiagonalPathClipper(),
                              child: Container(
                                height: 190,
                                width: 162,
                                decoration: const BoxDecoration(
                                  gradient: AppColors.linearGreen,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                ),
                              ),
                            ),
                            Image.asset(AppImages.viper),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'VIPER',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.colorWhite),
                                    ),
                                    Text(
                                      'Controllar',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                //Lista
              ],
            ),
          ),
        ),
      ),
    );
  }
}
