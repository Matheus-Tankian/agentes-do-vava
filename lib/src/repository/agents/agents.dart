import 'package:vava/src/models/agents_model.dart';
import 'package:vava/src/services/http/api_base.dart';
import 'package:vava/src/utils/api_urls.dart';

abstract class AgentReposity {
  Future<List<AgentsModel>> getAllAgents();
}

class AgentReposityImpl implements AgentReposity {
  final ApiBaseHelper _apiBaseHelper = ApiBaseHelper();
  @override
  Future<List<AgentsModel>> getAllAgents() async {
    final response = await _apiBaseHelper.get(getAllAgentsUrl());
    //final response = [];

    return (response as List)
        .map((agents) => AgentsModel.fromMap(agents))
        .toList();
  }
}
