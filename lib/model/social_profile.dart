// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SocialProfile {
 final String? instagram;
 final String? dribble;
 final String? linkedin;
 final String? github;
 final String? youtube;
  SocialProfile({
    this.instagram,
    this.dribble,
    this.linkedin,
    this.github,
    this.youtube,
  });


  SocialProfile copyWith({
    String? instagram,
    String? dribble,
    String? linkedin,
    String? github,
    String? youtube,
  }) {
    return SocialProfile(
      instagram: instagram ?? this.instagram,
      dribble: dribble ?? this.dribble,
      linkedin: linkedin ?? this.linkedin,
      github: github ?? this.github,
      youtube: youtube ?? this.youtube,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instagram': instagram,
      'dribble': dribble,
      'linkedin': linkedin,
      'github': github,
      'youtube': youtube,
    };
  }

  factory SocialProfile.fromMap(Map<String, dynamic> map) {
    return SocialProfile(
      instagram: map['instagram'] != null ? map['instagram'] as String : null,
      dribble: map['dribble'] != null ? map['dribble'] as String : null,
      linkedin: map['linkedin'] != null ? map['linkedin'] as String : null,
      github: map['github'] != null ? map['github'] as String : null,
      youtube: map['youtube'] != null ? map['youtube'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SocialProfile.fromJson(String source) => SocialProfile.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SocialProfile(instagram: $instagram, dribble: $dribble, linkedin: $linkedin, github: $github, youtube: $youtube)';
  }

  @override
  bool operator ==(covariant SocialProfile other) {
    if (identical(this, other)) return true;
  
    return 
      other.instagram == instagram &&
      other.dribble == dribble &&
      other.linkedin == linkedin &&
      other.github == github &&
      other.youtube == youtube;
  }

  @override
  int get hashCode {
    return instagram.hashCode ^
      dribble.hashCode ^
      linkedin.hashCode ^
      github.hashCode ^
      youtube.hashCode;
  }
}
