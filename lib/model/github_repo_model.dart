// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class GithubRepoModel {
  final String title;
  final int stars;
  final String? description;
  final String language;
  final String url;
  final int forks;
  GithubRepoModel({
    required this.title,
    required this.stars,
    this.description,
    required this.language,
    required this.url,
    required this.forks,
  });

  GithubRepoModel copyWith({
    String? title,
    int? stars,
    String? description,
    String? language,
    String? url,
    int? forks,
  }) {
    return GithubRepoModel(
      title: title ?? this.title,
      stars: stars ?? this.stars,
      description: description ?? this.description,
      language: language ?? this.language,
      url: url ?? this.url,
      forks: forks ?? this.forks,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'stars': stars,
      'description': description,
      'language': language,
      'url': url,
      'forks': forks,
    };
  }

  factory GithubRepoModel.fromMap(Map<String, dynamic> map) {
    return GithubRepoModel(
      title: map['title'] as String,
      stars: map['stars'] as int,
      description: map['description'] != null ? map['description'] as String : null,
      language: map['language'] as String,
      url: map['url'] as String,
      forks: map['forks'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory GithubRepoModel.fromJson(String source) => GithubRepoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GithubRepoModel(title: $title, stars: $stars, description: $description, language: $language, url: $url, forks: $forks)';
  }

  @override
  bool operator ==(covariant GithubRepoModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.stars == stars &&
      other.description == description &&
      other.language == language &&
      other.url == url &&
      other.forks == forks;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      stars.hashCode ^
      description.hashCode ^
      language.hashCode ^
      url.hashCode ^
      forks.hashCode;
  }
}
