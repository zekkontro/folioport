import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:folioport/model/json_data_model.dart';
import 'package:folioport/model/social_profile.dart';

class JsonDataViewmodel with ChangeNotifier {
  final String _path = "assets/data.json";
   JsonDataModel? _jsonDataModel;

  JsonDataModel get jsonDataModel => _jsonDataModel!;
  SocialProfile get socialProfile => _jsonDataModel!.socialProfile;
  initialize() async {
    final String response = await rootBundle.loadString(_path);
    _jsonDataModel = JsonDataModel.fromJson(response);
    notifyListeners();
  }
}
