import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vava/src/views/new_one/new_one_viewmodel.dart';

class NewOneView extends StatelessWidget {
  const NewOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NewOneViewModel>(
      create: (_) => NewOneViewModel(),
      child: Consumer<NewOneViewModel>(
        builder: (_, provider, __) => const SafeArea(
          child: Placeholder(),
        ),
      ),
    );
  }
}
