import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:folioport/model/personal_information.dart';
import 'package:folioport/model/social_profile.dart';

class JsonDataViewmodel with ChangeNotifier {
  final String _path = "assets/data.json";
   PersonalInformation? _personalInformationData;

  PersonalInformation get personalInformationData => _personalInformationData!;
  SocialProfile get socialProfile => _personalInformationData!.socialProfile;
  initialize() async {
    final String response = await rootBundle.loadString(_path);
    print("xx");
    print(response);
    _personalInformationData = PersonalInformation.fromJson(response);
    print(_personalInformationData!.email);
    notifyListeners();
  }
}
