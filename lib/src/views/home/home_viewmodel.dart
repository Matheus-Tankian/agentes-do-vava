import 'package:flutter/material.dart';
import 'package:vava/main.dart';
import 'package:vava/src/models/agents_model.dart';
import 'package:vava/src/repository/agents/agents.dart';
import 'package:vava/src/widgets/snackbar_widget.dart';

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
      showSnackbar('$e', true);
    }
  }

  void showSnackbar(String title, bool erro) {
    showSnackBarMessage(
      navigationApp.currentContext!,
      message: title,
      backgroundColor: erro ? Colors.red : Colors.green,
      duration: const Duration(seconds: 2),
    );
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
