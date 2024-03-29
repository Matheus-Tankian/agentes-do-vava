import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:vava/src/core/app_icons.dart';
import 'package:vava/src/repository/agents/agents.dart';
import 'package:vava/src/views/agent_list/agent_list.dart';
import 'package:vava/src/views/home/home_viewmodel.dart';
import 'package:vava/src/views/more/more_view.dart';
import 'package:vava/src/views/new_one/new_one_view.dart';
import 'package:vava/src/widgets/button_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (_) => HomeViewModel(
        AgentReposityImpl(),
      ),
      child: Consumer<HomeViewModel>(
        builder: (_, provider, __) => SafeArea(
          child: Visibility(
            visible: provider.loadPage == false,
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: ButtonList(
                      onItemSelected: (value) {
                        provider.changeIndexScreen(value);
                      },
                    ),
                  ),
                  Visibility(
                    visible: provider.indexScreen == 0,
                    child: AgentsList(
                      agentensList: provider.agentensList,
                    ),
                  ),
                  Visibility(
                    visible: provider.indexScreen == 1,
                    child: const NewOneView(),
                  ),
                  Visibility(
                    visible: provider.indexScreen == 2,
                    child: const MoreView(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
