class AgentsModel {
  int id;
  String agentName;
  String agentClass;
  String biography;
  List<AgentImageModel> imagens;

  AgentsModel({
    required this.id,
    required this.agentName,
    required this.agentClass,
    required this.biography,
    required this.imagens,
  });

  factory AgentsModel.fromJson(Map<String, dynamic> json) => AgentsModel(
        id: (json['id'] ?? 0) as int,
        agentName: (json['agent_name'] ?? '').toString(),
        agentClass: (json['agent_class'] ?? '').toString(),
        biography: (json['biography'] ?? '').toString(),
        imagens: List<AgentImageModel>.from(
            json['horarios']?.map((x) => AgentImageModel.fromJson(x))),
      );
}

class AgentImageModel {
  String url;

  AgentImageModel({
    required this.url,
  });

  factory AgentImageModel.fromJson(Map<String, dynamic> json) => AgentImageModel(
        url: (json['url'] ??'').toString(),
      );
}
