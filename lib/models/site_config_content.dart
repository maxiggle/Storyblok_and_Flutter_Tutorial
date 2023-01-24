// To parse this JSON data, do
//
//     final siteConfigContent = siteConfigContentFromJson(jsonString);

import 'dart:convert';

SiteConfigContent siteConfigContentFromJson(String str) =>
    SiteConfigContent.fromJson(json.decode(str));

String siteConfigContentToJson(SiteConfigContent data) =>
    json.encode(data.toJson());

class SiteConfigContent {
  SiteConfigContent({
    this.uid,
    this.component,
    this.headerNav,
    this.headerLogo,
  });

  final String? uid;
  final String? component;
  final List<HeaderNav>? headerNav;
  final HeaderLogo? headerLogo;

  SiteConfigContent copyWith({
    String? uid,
    String? component,
    List<HeaderNav>? headerNav,
    HeaderLogo? headerLogo,
  }) =>
      SiteConfigContent(
        uid: uid ?? this.uid,
        component: component ?? this.component,
        headerNav: headerNav ?? this.headerNav,
        headerLogo: headerLogo ?? this.headerLogo,
      );

  factory SiteConfigContent.fromJson(Map<String, dynamic> json) =>
      SiteConfigContent(
        uid: json["_uid"],
        component: json["component"],
        headerNav: json["header_nav"] == null
            ? []
            : List<HeaderNav>.from(
                json["header_nav"]!.map((x) => HeaderNav.fromJson(x))),
        headerLogo: json["header_logo"] == null
            ? null
            : HeaderLogo.fromJson(json["header_logo"]),
      );

  Map<String, dynamic> toJson() => {
        "_uid": uid,
        "component": component,
        "header_nav": headerNav == null
            ? []
            : List<dynamic>.from(headerNav!.map((x) => x.toJson())),
        "header_logo": headerLogo?.toJson(),
      };

  @override
  String toString() {
    return 'SiteConfigContent(uid: $uid, component: $component, headerNav: $headerNav, headerLogo: $headerLogo)';
  }
}

class HeaderLogo {
  HeaderLogo({
    this.id,
    this.alt,
    this.name,
    this.focus,
    this.title,
    this.filename,
    this.copyright,
    this.fieldtype,
    this.isExternalUrl,
  });

  final int? id;
  final String? alt;
  final String? name;
  final String? focus;
  final String? title;
  final String? filename;
  final String? copyright;
  final String? fieldtype;
  final bool? isExternalUrl;

  HeaderLogo copyWith({
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
      HeaderLogo(
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

  factory HeaderLogo.fromJson(Map<String, dynamic> json) => HeaderLogo(
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
    this.link,
    this.uid,
    this.label,
    this.component,
  });

  final Link? link;
  final String? uid;
  final String? label;
  final String? component;

  HeaderNav copyWith({
    Link? link,
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

  factory HeaderNav.fromJson(Map<String, dynamic> json) => HeaderNav(
        link: json["Link"] == null ? null : Link.fromJson(json["Link"]),
        uid: json["_uid"],
        label: json["Label"],
        component: json["component"],
      );

  Map<String, dynamic> toJson() => {
        "Link": link?.toJson(),
        "_uid": uid,
        "Label": label,
        "component": component,
      };
}

class Link {
  Link({
    this.id,
    this.url,
    this.linktype,
    this.fieldtype,
    this.cachedUrl,
  });

  final String? id;
  final String? url;
  final String? linktype;
  final String? fieldtype;
  final String? cachedUrl;

  Link copyWith({
    String? id,
    String? url,
    String? linktype,
    String? fieldtype,
    String? cachedUrl,
  }) =>
      Link(
        id: id ?? this.id,
        url: url ?? this.url,
        linktype: linktype ?? this.linktype,
        fieldtype: fieldtype ?? this.fieldtype,
        cachedUrl: cachedUrl ?? this.cachedUrl,
      );

  factory Link.fromJson(Map<String, dynamic> json) => Link(
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
