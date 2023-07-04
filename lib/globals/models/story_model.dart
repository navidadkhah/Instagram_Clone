import 'dart:convert';

Story storyFromMap(String str) => Story.fromMap(json.decode(str));

String storyToMap(Story data) => json.encode(data.toMap());

class Story {
  Story({
    this.name,
    this.hasSeen,
    this.links,
  });

  final String? name;
  final bool? hasSeen;
  final List<String>? links;

  Story copyWith({
    String? name,
    bool? hasSeen,
    List<String>? links,
  }) =>
      Story(
        name: name ?? this.name,
        hasSeen: hasSeen ?? this.hasSeen,
        links: links ?? this.links,
      );

  factory Story.fromMap(Map<String, dynamic> json) => Story(
        name: json["name"],
        hasSeen: json["hasSeen"],
        links: json["links"] == null
            ? null
            : List<String>.from(json["links"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "hasSeen": hasSeen,
        "links":
            links == null ? null : List<dynamic>.from(links!.map((x) => x)),
      };
}
