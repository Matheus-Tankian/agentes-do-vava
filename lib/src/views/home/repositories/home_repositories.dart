import 'dart:convert';

import 'package:vava/src/services/http/exeptions.dart';
import 'package:vava/src/services/http/http_api.dart';
import 'package:vava/src/views/home/model/agents_model.dart';

abstract class ImpleAgentRepository {
  Future<List<AgentsModel>> getAgents();
}

class AgenteRepository implements ImpleAgentRepository {
  late ImpleHttpClient client;

  AgenteRepository({required this.client});

  @override
  Future<List<AgentsModel>> getAgents() async {
    final response = await client.get(
      url: 'https://x8ki-letl-twmt.n7.xano.io/api:BODjAlRt/valorant',
    );
    if (response.statusCode == 200) {
      final List<AgentsModel> agets = [];

      final body = jsonDecode(response.body);

      body['valorant'].map((item) {
        final AgentsModel produto = AgentsModel.fromJson(item);
        agets.add(produto);
      }).toList();

      return agets;
    } else if (response.statusCode == 404) {
      throw NotFoundExeption('URL nao encontrada');
    } else {
      throw NotFoundExeption('Nao foi possivel carregar os produtos');
    }
  }
}
