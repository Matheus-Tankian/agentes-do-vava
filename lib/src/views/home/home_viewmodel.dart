import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vava/src/repository/home_repositories.dart';
import 'package:vava/src/services/http/exeptions.dart';

class HomeViewModel extends ChangeNotifier {
  final ImpleAgentRepository repository;

  bool _disposed = false;

  int _indexScreen = 0;
  int get indexScreen => _indexScreen;

  changeIndexScreen(int value) {
    _indexScreen = value;
    notifyListeners();
  }

  HomeViewModel({required this.repository}) {
    getProdutos();
  }

  Future<void> getProdutos() async {
    log('aq');
    try {
      final result = await repository.getAgents();
      log(result.first.agentName);
    } on NotFoundExeption catch (e) {
      e.message;
      log(e.message);
    } catch (e) {
      e.toString();
      log(e.toString());
    }
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
