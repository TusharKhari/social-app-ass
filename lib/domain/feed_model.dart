
class FeedModel {
  bool? success;
  List<Feedpost>? feedpost;

  FeedModel({this.success, this.feedpost});

  FeedModel.fromJson(Map<String, dynamic> json) {
    if(json["success"] is bool) {
      success = json["success"];
    }
    if(json["feedpost"] is List) {
      feedpost = json["feedpost"] == null ? null : (json["feedpost"] as List).map((e) => Feedpost.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    if(feedpost != null) {
      _data["feedpost"] = feedpost?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Feedpost {
  int? postid;
  String? postcontent;
  String? postdate;
  int? userid;
  String? userName;
  String? userPhoto;
  String? anNetworkId;
  List<dynamic>? photos;
  List<dynamic>? videos;
  List<String>? links;
  List<dynamic>? reels;
  dynamic projects;
  dynamic events;
  bool? likedstatus;
  List<dynamic>? comments;
  int? commentsCount;
  int? likesCount;
  List<dynamic>? likes;

  Feedpost({this.postid, this.postcontent, this.postdate, this.userid, this.userName, this.userPhoto, this.anNetworkId, this.photos, this.videos, this.links, this.reels, this.projects, this.events, this.likedstatus, this.comments, this.commentsCount, this.likesCount, this.likes});

  Feedpost.fromJson(Map<String, dynamic> json) {
    if(json["postid"] is int) {
      postid = json["postid"];
    }
    if(json["postcontent"] is String) {
      postcontent = json["postcontent"];
    }
    if(json["postdate"] is String) {
      postdate = json["postdate"];
    }
    if(json["userid"] is int) {
      userid = json["userid"];
    }
    if(json["user_name"] is String) {
      userName = json["user_name"];
    }
    if(json["user_photo"] is String) {
      userPhoto = json["user_photo"];
    }
    if(json["an_network_id"] is String) {
      anNetworkId = json["an_network_id"];
    }
    if(json["photos"] is List) {
      photos = json["photos"] ?? [];
    }
    if(json["videos"] is List) {
      videos = json["videos"] ?? [];
    }
    if(json["links"] is List) {
      links = json["links"] == null ? null : List<String>.from(json["links"]);
    }
    if(json["reels"] is List) {
      reels = json["reels"] ?? [];
    }
    projects = json["projects"];
    events = json["events"];
    if(json["likedstatus"] is bool) {
      likedstatus = json["likedstatus"];
    }
    if(json["comments"] is List) {
      comments = json["comments"] ?? [];
    }
    if(json["comments_count"] is int) {
      commentsCount = json["comments_count"];
    }
    if(json["likes_count"] is int) {
      likesCount = json["likes_count"];
    }
    if(json["likes"] is List) {
      likes = json["likes"] ?? [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["postid"] = postid;
    _data["postcontent"] = postcontent;
    _data["postdate"] = postdate;
    _data["userid"] = userid;
    _data["user_name"] = userName;
    _data["user_photo"] = userPhoto;
    _data["an_network_id"] = anNetworkId;
    if(photos != null) {
      _data["photos"] = photos;
    }
    if(videos != null) {
      _data["videos"] = videos;
    }
    if(links != null) {
      _data["links"] = links;
    }
    if(reels != null) {
      _data["reels"] = reels;
    }
    _data["projects"] = projects;
    _data["events"] = events;
    _data["likedstatus"] = likedstatus;
    if(comments != null) {
      _data["comments"] = comments;
    }
    _data["comments_count"] = commentsCount;
    _data["likes_count"] = likesCount;
    if(likes != null) {
      _data["likes"] = likes;
    }
    return _data;
  }
}