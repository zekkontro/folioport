// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:folioport/model/social_profile.dart';

class PersonalInformation {
  final String firstName;
  final String secondName;
  final String email;
  final String role;
  final String introductionText;
  final SocialProfile socialProfile;
  final List<String> githubRepos;
  final List<String> mediumBlogs;
  final List<String> skills;
  final String aboutMeText;
  PersonalInformation({
    required this.firstName,
    required this.secondName,
    required this.email,
    required this.role,
    required this.introductionText,
    required this.socialProfile,
    required this.githubRepos,
    required this.mediumBlogs,
    required this.skills,
    required this.aboutMeText,
  });

  PersonalInformation copyWith({
    String? firstName,
    String? secondName,
    String? email,
    String? role,
    String? introductionText,
    SocialProfile? socialProfile,
    List<String>? githubRepos,
    List<String>? mediumBlogs,
    List<String>? skills,
    String? aboutMeText,
  }) {
    return PersonalInformation(
      firstName: firstName ?? this.firstName,
      secondName: secondName ?? this.secondName,
      email: email ?? this.email,
      role: role ?? this.role,
      introductionText: introductionText ?? this.introductionText,
      socialProfile: socialProfile ?? this.socialProfile,
      githubRepos: githubRepos ?? this.githubRepos,
      mediumBlogs: mediumBlogs ?? this.mediumBlogs,
      skills: skills ?? this.skills,
      aboutMeText: aboutMeText ?? this.aboutMeText,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'secondName': secondName,
      'email': email,
      'role': role,
      'introductionText': introductionText,
      'socialProfile': socialProfile.toMap(),
      'githubRepos': githubRepos,
      'mediumBlogs': mediumBlogs,
      'skills': skills,
      'aboutMeText': aboutMeText,
    };
  }

  factory PersonalInformation.fromMap(Map<String, dynamic> map) {
    return PersonalInformation(
        firstName: map['firstName'],
        secondName: map['secondName'],
        email: map['email'],
        role: map['role'],
        aboutMeText: map['aboutMeText'],
        introductionText: map['introductionText'],
        socialProfile: SocialProfile.fromMap(map['socialProfile']),
        githubRepos: List<String>.from((map['githubRepos'])),
        mediumBlogs: List<String>.from((map['mediumBlogs'])),
        skills: List<String>.from(
          (map['skills']),
        ));
  }

  String toJson() => json.encode(toMap());

  factory PersonalInformation.fromJson(String source) =>
      PersonalInformation.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PersonalInformation(firstName: $firstName, secondName: $secondName, email: $email, role: $role, introductionText: $introductionText, socialProfile: $socialProfile, githubRepos: $githubRepos, mediumBlogs: $mediumBlogs, skills: $skills, aboutMeText: $aboutMeText)';
  }

  @override
  bool operator ==(covariant PersonalInformation other) {
    if (identical(this, other)) return true;

    return other.firstName == firstName &&
        other.secondName == secondName &&
        other.email == email &&
        other.role == role &&
        other.introductionText == introductionText &&
        other.socialProfile == socialProfile &&
        listEquals(other.githubRepos, githubRepos) &&
        listEquals(other.mediumBlogs, mediumBlogs) &&
        listEquals(other.skills, skills) &&
        other.aboutMeText == aboutMeText;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        secondName.hashCode ^
        email.hashCode ^
        role.hashCode ^
        introductionText.hashCode ^
        socialProfile.hashCode ^
        githubRepos.hashCode ^
        mediumBlogs.hashCode ^
        skills.hashCode ^
        aboutMeText.hashCode;
  }
}
