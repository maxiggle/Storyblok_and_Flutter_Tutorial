import 'dart:convert';

// To parse this JSON data, do
//
//     final story = storyFromJson(jsonString);
class Story {
  Story({
    required this.stories,
  });

  final List<StoryElement> stories;

  Story copyWith({
    List<StoryElement>? stories,
  }) =>
      Story(
        stories: stories ?? this.stories,
      );

  factory Story.fromRawJson(String str) => Story.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Story.fromJson(Map<String, dynamic> json) => Story(
        stories: List<StoryElement>.from(
            json["stories"].map((x) => StoryElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "stories": List<dynamic>.from(stories.map((x) => x.toJson())),
      };
}

class StoryElement {
  StoryElement({
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
  final Content content;
  final String slug;
  final String fullSlug;

  StoryElement copyWith({
    String? name,
    DateTime? createdAt,
    DateTime? publishedAt,
    int? id,
    String? uuid,
    Content? content,
    String? slug,
    String? fullSlug,
  }) =>
      StoryElement(
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        publishedAt: publishedAt ?? this.publishedAt,
        id: id ?? this.id,
        uuid: uuid ?? this.uuid,
        content: content ?? this.content,
        slug: slug ?? this.slug,
        fullSlug: fullSlug ?? this.fullSlug,
      );

  factory StoryElement.fromRawJson(String str) =>
      StoryElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StoryElement.fromJson(Map<String, dynamic> json) => StoryElement(
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        publishedAt: DateTime.parse(json["published_at"]),
        id: json["id"],
        uuid: json["uuid"],
        content: Content.fromJson(json["content"]),
        slug: json["slug"],
        fullSlug: json["full_slug"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "published_at": publishedAt.toIso8601String(),
        "id": id,
        "uuid": uuid,
        "content": content.toJson(),
        "slug": slug,
        "full_slug": fullSlug,
      };
}

class Content {
  Content({
    required this.uid,
    required this.contentButton,
    required this.headline,
    required this.subText,
    required this.component,
    required this.company,
    required this.duration,
    required this.workTitle,
    required this.aboutMe,
    required this.toolsUsed,
    required this.articleUrl,
    required this.articleHeadline,
    required this.articleDesccription,
    required this.headerNav,
    required this.headerLogo,
    required this.projectHeadline,
    required this.flutterProjectName,
    required this.flutterProjectImage,
    required this.flutterProjectDecription,
    required this.button,
    required this.urlText,
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.myDescription,
  });

  final String uid;
  final List<dynamic> contentButton;
  final String headline;
  final String subText;
  final String component;
  final String company;
  final String duration;
  final String workTitle;
  final String aboutMe;
  final FlutterProjectImage toolsUsed;
  final ArticleUrl articleUrl;
  final String articleHeadline;
  final String articleDesccription;
  final List<HeaderNav> headerNav;
  final FlutterProjectImage headerLogo;
  final String projectHeadline;
  final String flutterProjectName;
  final FlutterProjectImage flutterProjectImage;
  final String flutterProjectDecription;
  final List<Button> button;
  final String urlText;
  final String headline1;
  final String headline2;
  final String headline3;
  final String myDescription;

  Content copyWith({
    String? uid,
    List<dynamic>? contentButton,
    String? headline,
    String? subText,
    String? component,
    String? company,
    String? duration,
    String? workTitle,
    String? aboutMe,
    FlutterProjectImage? toolsUsed,
    ArticleUrl? articleUrl,
    String? articleHeadline,
    String? articleDesccription,
    List<HeaderNav>? headerNav,
    FlutterProjectImage? headerLogo,
    String? projectHeadline,
    String? flutterProjectName,
    FlutterProjectImage? flutterProjectImage,
    String? flutterProjectDecription,
    List<Button>? button,
    String? urlText,
    String? headline1,
    String? headline2,
    String? headline3,
    String? myDescription,
  }) =>
      Content(
        uid: uid ?? this.uid,
        contentButton: contentButton ?? this.contentButton,
        headline: headline ?? this.headline,
        subText: subText ?? this.subText,
        component: component ?? this.component,
        company: company ?? this.company,
        duration: duration ?? this.duration,
        workTitle: workTitle ?? this.workTitle,
        aboutMe: aboutMe ?? this.aboutMe,
        toolsUsed: toolsUsed ?? this.toolsUsed,
        articleUrl: articleUrl ?? this.articleUrl,
        articleHeadline: articleHeadline ?? this.articleHeadline,
        articleDesccription: articleDesccription ?? this.articleDesccription,
        headerNav: headerNav ?? this.headerNav,
        headerLogo: headerLogo ?? this.headerLogo,
        projectHeadline: projectHeadline ?? this.projectHeadline,
        flutterProjectName: flutterProjectName ?? this.flutterProjectName,
        flutterProjectImage: flutterProjectImage ?? this.flutterProjectImage,
        flutterProjectDecription:
            flutterProjectDecription ?? this.flutterProjectDecription,
        button: button ?? this.button,
        urlText: urlText ?? this.urlText,
        headline1: headline1 ?? this.headline1,
        headline2: headline2 ?? this.headline2,
        headline3: headline3 ?? this.headline3,
        myDescription: myDescription ?? this.myDescription,
      );

  factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        uid: json["_uid"],
        contentButton: List<dynamic>.from(json["button"].map((x) => x)),
        headline: json["headline"],
        subText: json["sub_text"],
        component: json["component"],
        company: json["company"],
        duration: json["duration"],
        workTitle: json["work_title"],
        aboutMe: json["about_me"],
        toolsUsed: FlutterProjectImage.fromJson(json["tools_used"]),
        articleUrl: ArticleUrl.fromJson(json["article_url"]),
        articleHeadline: json["article_headline"],
        articleDesccription: json["article_desccription"],
        headerNav: List<HeaderNav>.from(
            json["header_nav"].map((x) => HeaderNav.fromJson(x))),
        headerLogo: FlutterProjectImage.fromJson(json["header_logo"]),
        projectHeadline: json["project_headline"],
        flutterProjectName: json["flutter_project_name"],
        flutterProjectImage:
            FlutterProjectImage.fromJson(json["flutter_project_image"]),
        flutterProjectDecription: json["flutter_project_decription"],
        button:
            List<Button>.from(json["Button"].map((x) => Button.fromJson(x))),
        urlText: json["url_text"],
        headline1: json["headline1"],
        headline2: json["headline2"],
        headline3: json["headline3"],
        myDescription: json["my_description"],
      );

  Map<String, dynamic> toJson() => {
        "_uid": uid,
        "button": List<dynamic>.from(contentButton.map((x) => x)),
        "headline": headline,
        "sub_text": subText,
        "component": component,
        "company": company,
        "duration": duration,
        "work_title": workTitle,
        "about_me": aboutMe,
        "tools_used": toolsUsed.toJson(),
        "article_url": articleUrl.toJson(),
        "article_headline": articleHeadline,
        "article_desccription": articleDesccription,
        "header_nav": List<dynamic>.from(headerNav.map((x) => x.toJson())),
        "header_logo": headerLogo.toJson(),
        "project_headline": projectHeadline,
        "flutter_project_name": flutterProjectName,
        "flutter_project_image": flutterProjectImage.toJson(),
        "flutter_project_decription": flutterProjectDecription,
        "Button": List<dynamic>.from(button.map((x) => x.toJson())),
        "url_text": urlText,
        "headline1": headline1,
        "headline2": headline2,
        "headline3": headline3,
        "my_description": myDescription,
      };
}

class ArticleUrl {
  ArticleUrl({
    required this.id,
    required this.url,
    required this.linktype,
    required this.fieldtype,
    required this.cachedUrl,
  });

  final String id;
  final String url;
  final String linktype;
  final String fieldtype;
  final String cachedUrl;

  ArticleUrl copyWith({
    String? id,
    String? url,
    String? linktype,
    String? fieldtype,
    String? cachedUrl,
  }) =>
      ArticleUrl(
        id: id ?? this.id,
        url: url ?? this.url,
        linktype: linktype ?? this.linktype,
        fieldtype: fieldtype ?? this.fieldtype,
        cachedUrl: cachedUrl ?? this.cachedUrl,
      );

  factory ArticleUrl.fromRawJson(String str) =>
      ArticleUrl.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ArticleUrl.fromJson(Map<String, dynamic> json) => ArticleUrl(
        id: json["id"],
        url: json["url"],
        linktype: json["linktype"],
        fieldtype: json["fieldtype"],
        cachedUrl: json["cached_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "linktype": linktype,
        "fieldtype": fieldtype,
        "cached_url": cachedUrl,
      };
}

class Button {
  Button({
    required this.uid,
    required this.name,
    required this.component,
  });

  final String uid;
  final String name;
  final String component;

  Button copyWith({
    String? uid,
    String? name,
    String? component,
  }) =>
      Button(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        component: component ?? this.component,
      );

  factory Button.fromRawJson(String str) => Button.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Button.fromJson(Map<String, dynamic> json) => Button(
        uid: json["_uid"],
        name: json["name"],
        component: json["component"],
      );

  Map<String, dynamic> toJson() => {
        "_uid": uid,
        "name": name,
        "component": component,
      };
}

class FlutterProjectImage {
  FlutterProjectImage({
    required this.id,
    required this.alt,
    required this.name,
    required this.focus,
    required this.title,
    required this.filename,
    required this.copyright,
    required this.fieldtype,
    required this.isExternalUrl,
  });

  final int id;
  final String alt;
  final String name;
  final String focus;
  final String title;
  final String filename;
  final String copyright;
  final String fieldtype;
  final bool isExternalUrl;

  FlutterProjectImage copyWith({
    int? id,
    String? alt,
    String? name,
    String? focus,
    String? title,
    String? filename,
    String? copyright,
    String? fieldtype,
    bool? isExternalUrl,
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
        isExternalUrl: isExternalUrl ?? this.isExternalUrl,
      );

  factory FlutterProjectImage.fromRawJson(String str) =>
      FlutterProjectImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

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
        isExternalUrl: json["is_external_url"],
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
        "is_external_url": isExternalUrl,
      };
}

class HeaderNav {
  HeaderNav({
    required this.link,
    required this.uid,
    required this.label,
    required this.component,
  });

  final ArticleUrl link;
  final String uid;
  final String label;
  final String component;

  HeaderNav copyWith({
    ArticleUrl? link,
    String? uid,
    String? label,
    String? component,
  }) =>
      HeaderNav(
        link: link ?? this.link,
        uid: uid ?? this.uid,
        label: label ?? this.label,
        component: component ?? this.component,
      );

  factory HeaderNav.fromRawJson(String str) =>
      HeaderNav.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HeaderNav.fromJson(Map<String, dynamic> json) => HeaderNav(
        link: ArticleUrl.fromJson(json["Link"]),
        uid: json["_uid"],
        label: json["Label"],
        component: json["component"],
      );

  Map<String, dynamic> toJson() => {
        "Link": link.toJson(),
        "_uid": uid,
        "Label": label,
        "component": component,
      };
}
