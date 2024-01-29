import 'package:flutter/material.dart';
import 'package:vava/src/core/app_colors.dart';
import 'package:vava/src/models/agents_model.dart';
import 'package:vava/src/widgets/power_card.dart';
import 'package:vava/src/widgets/section_text.dart';

class HomeDetailView extends StatefulWidget {
  final AgentsModel agente;
  const HomeDetailView({
    super.key,
    required this.agente,
  });

  @override
  State<HomeDetailView> createState() => _HomeDetailViewState();
}

class _HomeDetailViewState extends State<HomeDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF02772D),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.8,
                    image: NetworkImage(
                      widget.agente.agentImage.url,
                    ),
                    fit: BoxFit.none,
                    alignment: Alignment.topLeft,
                  ),
                  gradient: AppColors.linearGreen,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Image.network(
                  widget.agente.agentImage.url,
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
                      widget.agente.biography,
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
              ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.agente.specialAbilities.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 26),
                    child: PowerCard(
                      imagem: widget.agente.specialAbilities[index].image.url,
                      title: widget.agente.specialAbilities[index].name
                          .toUpperCase(),
                      subtitle: widget.agente.specialAbilities[index].name,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
