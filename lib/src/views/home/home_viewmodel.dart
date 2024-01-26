import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  bool _disposed = false;

  int _indexScreen = 0;
  int get indexScreen => _indexScreen;

  changeIndexScreen(int value) {
    _indexScreen = value;
    notifyListeners();
  }

  HomeViewModel();
  //getProdutos();

  // Future<void> getProdutos() async {
  //   log('aq');
  //   try {
  //     final result = await repository.getAgents();
  //     log(result.first.agentName);
  //   } on NotFoundExeption catch (e) {
  //     e.message;
  //     log(e.message);
  //   } catch (e) {
  //     e.toString();
  //     log(e.toString());
  //   }
  // }

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
