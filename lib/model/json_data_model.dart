// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:folioport/model/github_repo_model.dart';
import 'package:folioport/model/medium_blog_model.dart';
import 'package:folioport/model/social_profile.dart';

class JsonDataModel {
  final String firstName;
  final String secondName;
  final String email;
  final String role;
  final String introductionText;
  final SocialProfile socialProfile;
  final List<GithubRepoModel> githubRepos;
  final List<MediumBlogModel> mediumBlogs;
  final List<String> skills;
  final String aboutMeText;
  JsonDataModel({
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

  JsonDataModel copyWith({
    String? firstName,
    String? secondName,
    String? email,
    String? role,
    String? introductionText,
    SocialProfile? socialProfile,
    List<GithubRepoModel>? githubRepos,
    List<MediumBlogModel>? mediumBlogs,
    List<String>? skills,
    String? aboutMeText,
  }) {
    return JsonDataModel(
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
      'githubRepos': githubRepos.map((x) => x.toMap()).toList(),
      'mediumBlogs': mediumBlogs.map((x) => x.toMap()).toList(),
      'skills': skills,
      'aboutMeText': aboutMeText,
    };
  }

  factory JsonDataModel.fromMap(Map<String, dynamic> map) {
    return JsonDataModel(
        aboutMeText: map['aboutMeText'] as String,
        firstName: map['firstName'] as String,
        secondName: map['secondName'] as String,
        email: map['email'] as String,
        role: map['role'] as String,
        introductionText: map['introductionText'] as String,
        socialProfile:
            SocialProfile.fromMap(map['socialProfile'] as Map<String, dynamic>),
        githubRepos: List<GithubRepoModel>.from(
          (map['githubRepos'] as List<dynamic>).map<GithubRepoModel>(
            (x) => GithubRepoModel.fromMap(x as Map<String, dynamic>),
          ),
        ),
        mediumBlogs: List<MediumBlogModel>.from(
          (map['mediumBlogs'] as List<dynamic>).map<MediumBlogModel>(
            (x) => MediumBlogModel.fromMap(x as Map<String, dynamic>),
          ),
        ),
        skills: List<String>.from(map['skills'] as List<dynamic>));
  }

  String toJson() => json.encode(toMap());

  factory JsonDataModel.fromJson(String source) =>
      JsonDataModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'JsonDataModel(firstName: $firstName, secondName: $secondName, email: $email, role: $role, introductionText: $introductionText, socialProfile: $socialProfile, githubRepos: $githubRepos, mediumBlogs: $mediumBlogs, skills: $skills, aboutMeText: $aboutMeText)';
  }

  @override
  bool operator ==(covariant JsonDataModel other) {
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
