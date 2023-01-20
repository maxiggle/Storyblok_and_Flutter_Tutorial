import 'dart:convert';

class Storyblok {
  Storyblok({
    required this.stories,
  });

  final List<Story> stories;

  Storyblok copyWith({
    List<Story>? stories,
  }) =>
      Storyblok(
        stories: stories ?? this.stories,
      );

  factory Storyblok.fromRawJson(String str) =>
      Storyblok.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Storyblok.fromJson(Map<String, dynamic> json) => Storyblok(
        stories:
            List<Story>.from(json["stories"].map((x) => Story.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "stories": List<dynamic>.from(stories.map((x) => x.toJson())),
      };
}

class Story {
  Story({
    required this.name,
    required this.createdAt,
    required this.publishedAt,
    required this.id,
    required this.uuid,
    required this.content,
    required this.slug,
    required this.fullSlug,
  });

  final String name;
  final DateTime createdAt;
  final DateTime publishedAt;
  final int id;
  final String uuid;
  final dynamic content;
  final String slug;
  final String fullSlug;

  Story copyWith({
    String? name,
    DateTime? createdAt,
    DateTime? publishedAt,
    int? id,
    String? uuid,
    dynamic? content,
    String? slug,
    String? fullSlug,
  }) =>
      Story(
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        publishedAt: publishedAt ?? this.publishedAt,
        id: id ?? this.id,
        uuid: uuid ?? this.uuid,
        content: content ?? this.content,
        slug: slug ?? this.slug,
        fullSlug: fullSlug ?? this.fullSlug,
      );

  factory Story.fromRawJson(String str) => Story.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Story.fromJson(Map<String, dynamic> json) => Story(
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        publishedAt: DateTime.parse(json["published_at"]),
        id: json["id"],
        uuid: json["uuid"],
        content: json["content"],
        slug: json["slug"],
        fullSlug: json["full_slug"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "published_at": publishedAt.toIso8601String(),
        "id": id,
        "uuid": uuid,
        "content": content,
        "slug": slug,
        "full_slug": fullSlug,
      };
}
