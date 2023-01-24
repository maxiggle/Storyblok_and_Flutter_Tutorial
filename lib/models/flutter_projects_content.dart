// To parse this JSON data, do
//
//     final flutterProjectsContent = flutterProjectsContentFromJson(jsonString);

import 'dart:convert';

FlutterProjectsContent flutterProjectsContentFromJson(String str) =>
    FlutterProjectsContent.fromJson(json.decode(str));

String flutterProjectsContentToJson(FlutterProjectsContent data) =>
    json.encode(data.toJson());

class FlutterProjectsContent {
  FlutterProjectsContent({
    this.uid,
    this.component,
    this.projectHeadline,
    this.flutterProjectName,
    this.flutterProjectImage,
    this.flutterProjectDecription,
  });

  final String? uid;
  final String? component;
  final String? projectHeadline;
  final String? flutterProjectName;
  final FlutterProjectImage? flutterProjectImage;
  final String? flutterProjectDecription;

  FlutterProjectsContent copyWith({
    String? uid,
    String? component,
    String? projectHeadline,
    String? flutterProjectName,
    FlutterProjectImage? flutterProjectImage,
    String? flutterProjectDecription,
  }) =>
      FlutterProjectsContent(
        uid: uid ?? this.uid,
        component: component ?? this.component,
        projectHeadline: projectHeadline ?? this.projectHeadline,
        flutterProjectName: flutterProjectName ?? this.flutterProjectName,
        flutterProjectImage: flutterProjectImage ?? this.flutterProjectImage,
        flutterProjectDecription:
            flutterProjectDecription ?? this.flutterProjectDecription,
      );

  factory FlutterProjectsContent.fromJson(Map<String, dynamic> json) =>
      FlutterProjectsContent(
        uid: json["_uid"],
        component: json["component"],
        projectHeadline: json["project_headline"],
        flutterProjectName: json["flutter_project_name"],
        flutterProjectImage: json["flutter_project_image"] == null
            ? null
            : FlutterProjectImage.fromJson(json["flutter_project_image"]),
        flutterProjectDecription: json["flutter_project_decription"],
      );

  Map<String, dynamic> toJson() => {
        "_uid": uid,
        "component": component,
        "project_headline": projectHeadline,
        "flutter_project_name": flutterProjectName,
        "flutter_project_image": flutterProjectImage?.toJson(),
        "flutter_project_decription": flutterProjectDecription,
      };

  @override
  String toString() {
    return 'FlutterProjectsContent(uid: $uid, component: $component, projectHeadline: $projectHeadline, flutterProjectName: $flutterProjectName, flutterProjectImage: $flutterProjectImage, flutterProjectDecription: $flutterProjectDecription)';
  }
}

class FlutterProjectImage {
  FlutterProjectImage({
    this.id,
    this.alt,
    this.name,
    this.focus,
    this.title,
    this.filename,
    this.copyright,
    this.fieldtype,
  });

  final String? id;
  final String? alt;
  final String? name;
  final String? focus;
  final String? title;
  final String? filename;
  final String? copyright;
  final String? fieldtype;

  FlutterProjectImage copyWith({
    String? id,
    String? alt,
    String? name,
    String? focus,
    String? title,
    String? filename,
    String? copyright,
    String? fieldtype,
  }) =>
      FlutterProjectImage(
        id: id ?? this.id,
        alt: alt ?? this.alt,
        name: name ?? this.name,
        focus: focus ?? this.focus,
        title: title ?? this.title,
        filename: filename ?? this.filename,
        copyright: copyright ?? this.copyright,
        fieldtype: fieldtype ?? this.fieldtype,
      );

  factory FlutterProjectImage.fromJson(Map<String, dynamic> json) =>
      FlutterProjectImage(
        id: json["id"],
        alt: json["alt"],
        name: json["name"],
        focus: json["focus"],
        title: json["title"],
        filename: json["filename"],
        copyright: json["copyright"],
        fieldtype: json["fieldtype"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "alt": alt,
        "name": name,
        "focus": focus,
        "title": title,
        "filename": filename,
        "copyright": copyright,
        "fieldtype": fieldtype,
      };
}
