class AgentsModel {
  int id;
  String agentName;
  String agentClass;
  String biography;
  // AgentImage? agentImage;
  //List<SpecialAbility>? specialAbility;

  AgentsModel({
    required this.id,
    required this.agentName,
    required this.agentClass,
    required this.biography,
    // this.agentImage,
  });

  factory AgentsModel.fromJson(Map<String, dynamic> json) => AgentsModel(
        id: json['id'],
        agentName: json['agent_name'],
        agentClass: json['agent_class'],
        biography: json['biography'],
      );
}

// class AgentImage {
//   String? access;
//   String? path;
//   String? name;
//   String? type;
//   int? size;
//   String? mime;
//   Meta? meta;
//   String? url;

//   AgentImage(
//       {this.access,
//       this.path,
//       this.name,
//       this.type,
//       this.size,
//       this.mime,
//       this.meta,
//       this.url});

//   AgentImage.fromJson(Map<String, dynamic> json) {
//     access = json['access'];
//     path = json['path'];
//     name = json['name'];
//     type = json['type'];
//     size = json['size'];
//     mime = json['mime'];
//     meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
//     url = json['url'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['access'] = this.access;
//     data['path'] = this.path;
//     data['name'] = this.name;
//     data['type'] = this.type;
//     data['size'] = this.size;
//     data['mime'] = this.mime;
//     if (this.meta != null) {
//       data['meta'] = this.meta!.toJson();
//     }
//     data['url'] = this.url;
//     return data;
//   }
// }
