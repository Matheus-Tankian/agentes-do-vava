import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:vava/src/core/app_colors.dart';
import 'package:vava/src/models/agents_model.dart';
import 'package:vava/src/views/home/home_detail/home_detail_view.dart';

class AgentsList extends StatefulWidget {
  final List<AgentsModel> agentensList;
  const AgentsList({
    super.key,
    required this.agentensList,
  });

  @override
  State<AgentsList> createState() => _AgentsListState();
}

class _AgentsListState extends State<AgentsList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 30),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
        itemCount: widget.agentensList.length,
        itemBuilder: (context, index) {
          return InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              var agente = widget.agentensList[index];
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailView(agente: agente),
                ),
              );
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
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
                Image.network(
                  widget.agentensList[index].agentImage.url,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.agentensList[index].agentName,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: AppColors.colorWhite),
                        ),
                        Text(
                          widget.agentensList[index].agentClass,
                          style: Theme.of(context).textTheme.titleSmall,
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
    );
  }
}
