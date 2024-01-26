import 'package:vava/src/models/agents_model.dart';

abstract class AgentReposity {
  Future<List<AgentsModel>> getAllAgents();
}

class AgentReposityImpl implements AgentReposity {
  //final ApiBaseHelper _apiBaseHelper = ApiBaseHelper();
  @override
  Future<List<AgentsModel>> getAllAgents() async {
    //final response = await _apiBaseHelper.get(getEscolasUrl());
    final response = [];
    Iterable list = response.map((agents) => agents.toMap());

    return list.map((agents) => AgentsModel.fromJson(agents)).toList();
  }
}
