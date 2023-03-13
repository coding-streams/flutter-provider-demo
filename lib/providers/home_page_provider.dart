import 'package:flutter/material.dart';
import 'package:provider_demo/repos/names_repo.dart';

class HomePageProvider with ChangeNotifier {
  final NamesRepository _namesRepository = NamesRepository.getInstance();

  late var name;

  HomePageProvider() {
    name = _namesRepository.getRandomName();
  }

  void getRandomName() {
    name = _namesRepository.getRandomName();
    notifyListeners();
  }
}
