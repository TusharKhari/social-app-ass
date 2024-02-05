
class ReelModel {
  bool? success;
  List<Reels>? reels;

  ReelModel({this.success, this.reels});

  ReelModel.fromJson(Map<String, dynamic> json) {
    if(json["success"] is bool) {
      success = json["success"];
    }
    if(json["reels"] is List) {
      reels = json["reels"] == null ? null : (json["reels"] as List).map((e) => Reels.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    if(reels != null) {
      _data["reels"] = reels?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Reels {
  int? id;
  int? userId;
  String? mediaFile;
  String? thumbnail;
  int? viewCount;
  int? deleteStatus;
  int? feedpostId;
  String? createdAt;
  String? updatedAt;
  UserDetails? userDetails;
  String? caption;

  Reels({this.id, this.userId, this.mediaFile, this.thumbnail, this.viewCount, this.deleteStatus, this.feedpostId, this.createdAt, this.updatedAt, this.userDetails, this.caption});

  Reels.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["media_file"] is String) {
      mediaFile = json["media_file"];
    }
    if(json["thumbnail"] is String) {
      thumbnail = json["thumbnail"];
    }
    if(json["view_count"] is int) {
      viewCount = json["view_count"];
    }
    if(json["delete_status"] is int) {
      deleteStatus = json["delete_status"];
    }
    if(json["feedpost_id"] is int) {
      feedpostId = json["feedpost_id"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if(json["user_details"] is Map) {
      userDetails = json["user_details"] == null ? null : UserDetails.fromJson(json["user_details"]);
    }
    if(json["caption"] is String) {
      caption = json["caption"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["user_id"] = userId;
    _data["media_file"] = mediaFile;
    _data["thumbnail"] = thumbnail;
    _data["view_count"] = viewCount;
    _data["delete_status"] = deleteStatus;
    _data["feedpost_id"] = feedpostId;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    if(userDetails != null) {
      _data["user_details"] = userDetails?.toJson();
    }
    _data["caption"] = caption;
    return _data;
  }
}

class UserDetails {
  int? id;
  int? usertypeId;
  int? membershipId;
  String? name;
  dynamic gender;
  dynamic dob;
  int? age;
  String? email;
  dynamic phone;
  String? aboutme;
  dynamic designation;
  dynamic username;
  dynamic address;
  dynamic landmark;
  dynamic city;
  dynamic state;
  dynamic country;
  dynamic education;
  dynamic height;
  dynamic weight;
  dynamic homeTown;
  dynamic livingTown;
  String? profilePicture;
  dynamic languagesId;
  dynamic skillsId;
  int? views;
  int? followers;
  int? likes;
  int? comments;
  String? userAvailability;
  int? artiztCategoryId;
  dynamic facebook;
  dynamic twitter;
  dynamic linkedin;
  dynamic instagram;
  dynamic googleplus;
  dynamic apple;
  dynamic youtube;
  dynamic aboutMe;
  dynamic association;
  String? coverphoto;
  dynamic metaTitle;
  dynamic metaKeyword;
  dynamic metaDescription;
  dynamic tags;
  dynamic keyPhrase;
  int? commentPermission;
  int? profileViewPermission;
  int? projectViewPermission;
  int? storeViewPermission;
  int? fncPermission;
  int? postsPermission;
  int? messagePermission;
  int? callPermission;
  dynamic blockUsers;
  int? status;
  int? deleteStatus;
  int? joinId;
  String? createdAt;
  String? anNetworkId;
  String? anAccountNumber;
  dynamic primaryArt;
  String? primaryDesignation;
  int? countryCode;
  String? updatedAt;
  dynamic otpExpiry;
  int? verifiedStatus;
  int? loginStatus;
  int? loginType;
  dynamic updateMobile;
  dynamic updateEmail;
  dynamic updateOtp;
  dynamic updateExpiry;
  dynamic deletedAt;
  int? activeStatus;
  String? avatar;
  int? darkMode;
  dynamic deletedTime;
  dynamic messengerColor;
  int? followersCount;
  String? profilePictureUrl;
  String? coverphotoUrl;

  UserDetails({this.id, this.usertypeId, this.membershipId, this.name, this.gender, this.dob, this.age, this.email, this.phone, this.aboutme, this.designation, this.username, this.address, this.landmark, this.city, this.state, this.country, this.education, this.height, this.weight, this.homeTown, this.livingTown, this.profilePicture, this.languagesId, this.skillsId, this.views, this.followers, this.likes, this.comments, this.userAvailability, this.artiztCategoryId, this.facebook, this.twitter, this.linkedin, this.instagram, this.googleplus, this.apple, this.youtube, this.aboutMe, this.association, this.coverphoto, this.metaTitle, this.metaKeyword, this.metaDescription, this.tags, this.keyPhrase, this.commentPermission, this.profileViewPermission, this.projectViewPermission, this.storeViewPermission, this.fncPermission, this.postsPermission, this.messagePermission, this.callPermission, this.blockUsers, this.status, this.deleteStatus, this.joinId, this.createdAt, this.anNetworkId, this.anAccountNumber, this.primaryArt, this.primaryDesignation, this.countryCode, this.updatedAt, this.otpExpiry, this.verifiedStatus, this.loginStatus, this.loginType, this.updateMobile, this.updateEmail, this.updateOtp, this.updateExpiry, this.deletedAt, this.activeStatus, this.avatar, this.darkMode, this.deletedTime, this.messengerColor, this.followersCount, this.profilePictureUrl, this.coverphotoUrl});

  UserDetails.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["usertype_id"] is int) {
      usertypeId = json["usertype_id"];
    }
    if(json["membership_id"] is int) {
      membershipId = json["membership_id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    gender = json["gender"];
    dob = json["dob"];
    if(json["age"] is int) {
      age = json["age"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    phone = json["phone"];
    if(json["aboutme"] is String) {
      aboutme = json["aboutme"];
    }
    designation = json["designation"];
    username = json["username"];
    address = json["address"];
    landmark = json["landmark"];
    city = json["city"];
    state = json["state"];
    country = json["country"];
    education = json["education"];
    height = json["height"];
    weight = json["weight"];
    homeTown = json["home_town"];
    livingTown = json["living_town"];
    if(json["profile_picture"] is String) {
      profilePicture = json["profile_picture"];
    }
    languagesId = json["languages_id"];
    skillsId = json["skills_id"];
    if(json["views"] is int) {
      views = json["views"];
    }
    if(json["followers"] is int) {
      followers = json["followers"];
    }
    if(json["likes"] is int) {
      likes = json["likes"];
    }
    if(json["comments"] is int) {
      comments = json["comments"];
    }
    if(json["user_availability"] is String) {
      userAvailability = json["user_availability"];
    }
    if(json["artizt_category_id"] is int) {
      artiztCategoryId = json["artizt_category_id"];
    }
    facebook = json["facebook"];
    twitter = json["twitter"];
    linkedin = json["linkedin"];
    instagram = json["instagram"];
    googleplus = json["googleplus"];
    apple = json["apple"];
    youtube = json["youtube"];
    aboutMe = json["about_me"];
    association = json["association"];
    if(json["coverphoto"] is String) {
      coverphoto = json["coverphoto"];
    }
    metaTitle = json["meta_title"];
    metaKeyword = json["meta_keyword"];
    metaDescription = json["meta_description"];
    tags = json["tags"];
    keyPhrase = json["key_phrase"];
    if(json["comment_permission"] is int) {
      commentPermission = json["comment_permission"];
    }
    if(json["profile_view_permission"] is int) {
      profileViewPermission = json["profile_view_permission"];
    }
    if(json["project_view_permission"] is int) {
      projectViewPermission = json["project_view_permission"];
    }
    if(json["store_view_permission"] is int) {
      storeViewPermission = json["store_view_permission"];
    }
    if(json["fnc_permission"] is int) {
      fncPermission = json["fnc_permission"];
    }
    if(json["posts_permission"] is int) {
      postsPermission = json["posts_permission"];
    }
    if(json["message_permission"] is int) {
      messagePermission = json["message_permission"];
    }
    if(json["call_permission"] is int) {
      callPermission = json["call_permission"];
    }
    blockUsers = json["block_users"];
    if(json["status"] is int) {
      status = json["status"];
    }
    if(json["delete_status"] is int) {
      deleteStatus = json["delete_status"];
    }
    if(json["join_id"] is int) {
      joinId = json["join_id"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["an_network_id"] is String) {
      anNetworkId = json["an_network_id"];
    }
    if(json["an_account_number"] is String) {
      anAccountNumber = json["an_account_number"];
    }
    primaryArt = json["primary_art"];
    if(json["primary_designation"] is String) {
      primaryDesignation = json["primary_designation"];
    }
    if(json["country_code"] is int) {
      countryCode = json["country_code"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    otpExpiry = json["otp_expiry"];
    if(json["verified_status"] is int) {
      verifiedStatus = json["verified_status"];
    }
    if(json["login_status"] is int) {
      loginStatus = json["login_status"];
    }
    if(json["login_type"] is int) {
      loginType = json["login_type"];
    }
    updateMobile = json["update_mobile"];
    updateEmail = json["update_email"];
    updateOtp = json["update_otp"];
    updateExpiry = json["update_expiry"];
    deletedAt = json["deleted_at"];
    if(json["active_status"] is int) {
      activeStatus = json["active_status"];
    }
    if(json["avatar"] is String) {
      avatar = json["avatar"];
    }
    if(json["dark_mode"] is int) {
      darkMode = json["dark_mode"];
    }
    deletedTime = json["deleted_time"];
    messengerColor = json["messenger_color"];
    if(json["followers_count"] is int) {
      followersCount = json["followers_count"];
    }
    if(json["profile_picture_url"] is String) {
      profilePictureUrl = json["profile_picture_url"];
    }
    if(json["coverphoto_url"] is String) {
      coverphotoUrl = json["coverphoto_url"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["usertype_id"] = usertypeId;
    _data["membership_id"] = membershipId;
    _data["name"] = name;
    _data["gender"] = gender;
    _data["dob"] = dob;
    _data["age"] = age;
    _data["email"] = email;
    _data["phone"] = phone;
    _data["aboutme"] = aboutme;
    _data["designation"] = designation;
    _data["username"] = username;
    _data["address"] = address;
    _data["landmark"] = landmark;
    _data["city"] = city;
    _data["state"] = state;
    _data["country"] = country;
    _data["education"] = education;
    _data["height"] = height;
    _data["weight"] = weight;
    _data["home_town"] = homeTown;
    _data["living_town"] = livingTown;
    _data["profile_picture"] = profilePicture;
    _data["languages_id"] = languagesId;
    _data["skills_id"] = skillsId;
    _data["views"] = views;
    _data["followers"] = followers;
    _data["likes"] = likes;
    _data["comments"] = comments;
    _data["user_availability"] = userAvailability;
    _data["artizt_category_id"] = artiztCategoryId;
    _data["facebook"] = facebook;
    _data["twitter"] = twitter;
    _data["linkedin"] = linkedin;
    _data["instagram"] = instagram;
    _data["googleplus"] = googleplus;
    _data["apple"] = apple;
    _data["youtube"] = youtube;
    _data["about_me"] = aboutMe;
    _data["association"] = association;
    _data["coverphoto"] = coverphoto;
    _data["meta_title"] = metaTitle;
    _data["meta_keyword"] = metaKeyword;
    _data["meta_description"] = metaDescription;
    _data["tags"] = tags;
    _data["key_phrase"] = keyPhrase;
    _data["comment_permission"] = commentPermission;
    _data["profile_view_permission"] = profileViewPermission;
    _data["project_view_permission"] = projectViewPermission;
    _data["store_view_permission"] = storeViewPermission;
    _data["fnc_permission"] = fncPermission;
    _data["posts_permission"] = postsPermission;
    _data["message_permission"] = messagePermission;
    _data["call_permission"] = callPermission;
    _data["block_users"] = blockUsers;
    _data["status"] = status;
    _data["delete_status"] = deleteStatus;
    _data["join_id"] = joinId;
    _data["created_at"] = createdAt;
    _data["an_network_id"] = anNetworkId;
    _data["an_account_number"] = anAccountNumber;
    _data["primary_art"] = primaryArt;
    _data["primary_designation"] = primaryDesignation;
    _data["country_code"] = countryCode;
    _data["updated_at"] = updatedAt;
    _data["otp_expiry"] = otpExpiry;
    _data["verified_status"] = verifiedStatus;
    _data["login_status"] = loginStatus;
    _data["login_type"] = loginType;
    _data["update_mobile"] = updateMobile;
    _data["update_email"] = updateEmail;
    _data["update_otp"] = updateOtp;
    _data["update_expiry"] = updateExpiry;
    _data["deleted_at"] = deletedAt;
    _data["active_status"] = activeStatus;
    _data["avatar"] = avatar;
    _data["dark_mode"] = darkMode;
    _data["deleted_time"] = deletedTime;
    _data["messenger_color"] = messengerColor;
    _data["followers_count"] = followersCount;
    _data["profile_picture_url"] = profilePictureUrl;
    _data["coverphoto_url"] = coverphotoUrl;
    return _data;
  }
}