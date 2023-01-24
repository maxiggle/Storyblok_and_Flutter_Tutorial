// To parse this JSON data, do
//
//     final aboutContent = aboutContentFromJson(jsonString);

import 'dart:convert';

AboutContent aboutContentFromJson(String str) =>
    AboutContent.fromJson(json.decode(str));

String aboutContentToJson(AboutContent data) => json.encode(data.toJson());

class AboutContent {
  AboutContent({
    this.uid,
    this.aboutMe,
    this.headline,
    this.component,
  });

  final String? uid;
  final String? aboutMe;
  final String? headline;
  final String? component;

  AboutContent copyWith({
    String? uid,
    String? aboutMe,
    String? headline,
    String? component,
  }) =>
      AboutContent(
        uid: uid ?? this.uid,
        aboutMe: aboutMe ?? this.aboutMe,
        headline: headline ?? this.headline,
        component: component ?? this.component,
      );

  factory AboutContent.fromJson(Map<String, dynamic> json) => AboutContent(
        uid: json["_uid"],
        aboutMe: json["about_me"],
        headline: json["headline"],
        component: json["component"],
      );

  Map<String, dynamic> toJson() => {
        "_uid": uid,
        "about_me": aboutMe,
        "headline": headline,
        "component": component,
      };

  @override
  String toString() {
    return 'AboutContent(uid: $uid, aboutMe: $aboutMe, headline: $headline, component: $component)';
  }
}
