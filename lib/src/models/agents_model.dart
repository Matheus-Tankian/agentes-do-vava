class AgentsModel {
  int id;
  String agentName;
  String agentClass;
  String biography;
  AgentImageModel agentImage;
  String firstColor;
  String secondColor;
  List<SpecialAbilityModel> specialAbilities;

  AgentsModel({
    required this.id,
    required this.agentName,
    required this.agentClass,
    required this.biography,
    required this.agentImage,
    required this.firstColor,
    required this.secondColor,
    required this.specialAbilities,
  });

  factory AgentsModel.fromMap(Map<String, dynamic> map) => AgentsModel(
        id: (map['id'] ?? 0) as int,
        agentName: (map['agent_name'] ?? '').toString(),
        agentClass: (map['agent_class'] ?? '').toString(),
        biography: (map['biography'] ?? '').toString(),
        agentImage: AgentImageModel.fromMap(map['agent_image']),
        firstColor: (map['first_color'] ?? 0).toString(),
        secondColor: (map['second_color'] ?? 0).toString(),
        specialAbilities: (map['special_ability'] as List)
            .map((item) => SpecialAbilityModel.fromMap(item))
            .toList(),
      );
}

class AgentImageModel {
  String url;

  AgentImageModel({
    required this.url,
  });

  factory AgentImageModel.fromMap(Map<String, dynamic> map) => AgentImageModel(
        url: (map['url'] ?? '').toString(),
      );
}

class SpecialAbilityModel {
  String name;
  SpecialAbilityImageModel image;

  SpecialAbilityModel({
    required this.name,
    required this.image,
  });

  factory SpecialAbilityModel.fromMap(Map<String, dynamic> map) =>
      SpecialAbilityModel(
          name: (map['special_ability_name'] ?? '').toString(),
          image:
              SpecialAbilityImageModel.fromMap(map['special_ability_image']));
}

class SpecialAbilityImageModel {
  String url;

  SpecialAbilityImageModel({
    required this.url,
  });

  factory SpecialAbilityImageModel.fromMap(Map<String, dynamic> map) =>
      SpecialAbilityImageModel(
        url: (map['url'] ?? '').toString(),
      );
}
