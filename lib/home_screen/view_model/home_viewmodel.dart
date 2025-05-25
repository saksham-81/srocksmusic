import 'package:flutter/material.dart';
import 'package:srocksmusic/home_screen/infrastructure/music_service_repository.dart';
import 'package:srocksmusic/home_screen/model/music_service_model.dart';

class HomeViewModel extends ChangeNotifier {
  final FirestoreServiceRepository _repository = FirestoreServiceRepository();
  List<ServiceModel> services = [];
  bool isLoading = true;

  // HomeViewModel(this._repository);
  HomeViewModel() {
    fetchServices();
  }

  Future<void> fetchServices() async {
    services = await _repository.getServices();
    isLoading = false;
    notifyListeners();
  }
}