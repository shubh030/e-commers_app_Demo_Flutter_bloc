class Club {
  String clubId;
  String orgId;
  String uniqueId;
  String name;
  String subtitle;
  String urlKey;
  String description;
  String groupId;
  String image;
  String clogo;
  String videoUrlKey;
  String clubThemeColor;
  String pageTitle;
  String metaKeywords;
  String metaDescription;
  String creationTime;
  String updateTime;
  String status;
  String position;
  String clubPrefix;
  String clubCount;
  String clubFirstColor;
  String clubSecondColor;
  String clubThirdColor;

  Club({
    required this.clubId,
    required this.orgId,
    required this.uniqueId,
    required this.name,
    required this.subtitle,
    required this.urlKey,
    required this.description,
    required this.groupId,
    required this.image,
    required this.clogo,
    required this.videoUrlKey,
    required this.clubThemeColor,
    required this.pageTitle,
    required this.metaKeywords,
    required this.metaDescription,
    required this.creationTime,
    required this.updateTime,
    required this.status,
    required this.position,
    required this.clubPrefix,
    required this.clubCount,
    required this.clubFirstColor,
    required this.clubSecondColor,
    required this.clubThirdColor,
  });

  factory Club.fromJson(Map<String, dynamic> json) {
    String name = json['name'].toString().replaceAll(RegExp(r'<[^>]*>'), '');
    return Club(
      clubId: json['club_id'],
      orgId: json['orgid'],
      uniqueId: json['uniqueid'],
      name: name,
      subtitle: json['subtitle'],
      urlKey: json['url_key'],
      description: json['description'],
      groupId: json['group_id'],
      image: json['image'],
      clogo: json['clogo'],
      videoUrlKey: json['videourl_key'],
      clubThemeColor: json['clubthemcolor'],
      pageTitle: json['page_title'],
      metaKeywords: json['meta_keywords'],
      metaDescription: json['meta_description'],
      creationTime: json['creation_time'],
      updateTime: json['update_time'],
      status: json['status'],
      position: json['position'],
      clubPrefix: json['club_prefix'],
      clubCount: json['club_count'],
      clubFirstColor: json['club_first_color'],
      clubSecondColor: json['club_second_color'],
      clubThirdColor: json['club_third_color'],
    );
  }

  Map<String, dynamic> toJson() => {
        'club_id': clubId,
        'orgid': orgId,
        'uniqueid': uniqueId,
        'name': name,
        'subtitle': subtitle,
        'url_key': urlKey,
        'description': description,
        'group_id': groupId,
        'image': image,
        'clogo': clogo,
        'videourl_key': videoUrlKey,
        'clubthemcolor': clubThemeColor,
        'page_title': pageTitle,
        'meta_keywords': metaKeywords,
        'meta_description': metaDescription,
        'creation_time': creationTime,
        'update_time': updateTime,
        'status': status,
        'position': position,
        'club_prefix': clubPrefix,
        'club_count': clubCount,
        'club_first_color': clubFirstColor,
        'club_second_color': clubSecondColor,
        'club_third_color': clubThirdColor,
      };
}

class ClubList {
  List<Club> clubs;

  ClubList({required this.clubs});

  factory ClubList.fromJson(List<dynamic> json) {
    List<Club> clubs = json.map((e) => Club.fromJson(e)).toList();
    return ClubList(clubs: clubs);
  }

  List<Map<String, dynamic>> toJson() {
    return clubs.map((e) => e.toJson()).toList();
  }
}
