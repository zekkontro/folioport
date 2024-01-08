// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MediumBlogModel {
  final String title;
  final String description;
  final String publishDate;
  final String readTime;
  final String coverImageLink;
  MediumBlogModel({
    required this.title,
    required this.description,
    required this.publishDate,
    required this.readTime,
    required this.coverImageLink,
  });

  MediumBlogModel copyWith({
    String? title,
    String? description,
    String? publishDate,
    String? readTime,
    String? coverImageLink,
  }) {
    return MediumBlogModel(
      title: title ?? this.title,
      description: description ?? this.description,
      publishDate: publishDate ?? this.publishDate,
      readTime: readTime ?? this.readTime,
      coverImageLink: coverImageLink ?? this.coverImageLink,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'publishDate': publishDate,
      'readTime': readTime,
      'cover_image_link': coverImageLink,
    };
  }

  factory MediumBlogModel.fromMap(Map<String, dynamic> map) {
    return MediumBlogModel(
      title: map['title'] as String,
      description: map['description'] as String,
      publishDate: map['publishDate'] as String,
      readTime: map['readTime'] as String,
      coverImageLink: map['cover_image_link'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MediumBlogModel.fromJson(String source) => MediumBlogModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MediumBlogModel(title: $title, description: $description, publishDate: $publishDate, readTime: $readTime, cover_image_link: $coverImageLink)';
  }

  @override
  bool operator ==(covariant MediumBlogModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.description == description &&
      other.publishDate == publishDate &&
      other.readTime == readTime &&
      other.coverImageLink == coverImageLink;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      description.hashCode ^
      publishDate.hashCode ^
      readTime.hashCode ^
      coverImageLink.hashCode;
  }
}
       