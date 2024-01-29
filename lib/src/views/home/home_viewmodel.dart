import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vava/src/models/agents_model.dart';
import 'package:vava/src/repository/agents/agents.dart';

class HomeViewModel extends ChangeNotifier {
  final AgentReposity _agentReposity;

  bool _disposed = false;

  int _indexScreen = 0;
  int get indexScreen => _indexScreen;

  List<AgentsModel> _agentensList = [];
  List<AgentsModel> get agentensList => _agentensList;

  bool _loadPage = false;
  bool get loadPage => _loadPage;

  HomeViewModel(this._agentReposity) {
    loadFunctions();
  }

  Future<void> loadFunctions() async {
    await getAgentsList();
  }

  changeLoadPage(bool value) {
    _loadPage = value;
    notifyListeners();
  }

  changeAgentensList(List<AgentsModel> value) {
    _agentensList = value;
    notifyListeners();
  }

  changeIndexScreen(int value) {
    _indexScreen = value;
    notifyListeners();
  }

  Future<void> getAgentsList() async {
    try {
      changeLoadPage(true);
      final result = await _agentReposity.getAllAgents();
      await changeAgentensList(result);
      changeLoadPage(false);
    } catch (e) {
      changeLoadPage(false);
      log('ERROR: $e');
    }
    // for (final x in result) {
    //   log('id: ${x.id}');
    //   log('nome: ${x.agentName}');
    //   log('class: ${x.agentClass}');
    //   log('biografia: ${x.biography}');
    //   log('imagen: ${x.agentImage.url}');
    //   for (final y in x.specialAbilities) {
    //     log('special name:${y.name}');
    //     log('special image:${y.image.url}');
    //   }
    // }
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }
}
