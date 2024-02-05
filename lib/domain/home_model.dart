
class HomeModel {
  Projects? projects;
  Artizts? artizts;
  Stores? stores;
  Events? events;
  List<Fncs>? fncs;
  List<Auditions>? auditions;
  Stories? stories;
  int? notificationCount;

  HomeModel({this.projects, this.artizts, this.stores, this.events, this.fncs, this.auditions, this.stories, this.notificationCount});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if(json["projects"] is Map) {
      projects = json["projects"] == null ? null : Projects.fromJson(json["projects"]);
    }
    if(json["artizts"] is Map) {
      artizts = json["artizts"] == null ? null : Artizts.fromJson(json["artizts"]);
    }
    if(json["stores"] is Map) {
      stores = json["stores"] == null ? null : Stores.fromJson(json["stores"]);
    }
    if(json["events"] is Map) {
      events = json["events"] == null ? null : Events.fromJson(json["events"]);
    }
    if(json["fncs"] is List) {
      fncs = json["fncs"] == null ? null : (json["fncs"] as List).map((e) => Fncs.fromJson(e)).toList();
    }
    if(json["auditions"] is List) {
      auditions = json["auditions"] == null ? null : (json["auditions"] as List).map((e) => Auditions.fromJson(e)).toList();
    }
    if(json["stories"] is Map) {
      stories = json["stories"] == null ? null : Stories.fromJson(json["stories"]);
    }
    if(json["notification_count"] is int) {
      notificationCount = json["notification_count"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(projects != null) {
      _data["projects"] = projects?.toJson();
    }
    if(artizts != null) {
      _data["artizts"] = artizts?.toJson();
    }
    if(stores != null) {
      _data["stores"] = stores?.toJson();
    }
    if(events != null) {
      _data["events"] = events?.toJson();
    }
    if(fncs != null) {
      _data["fncs"] = fncs?.map((e) => e.toJson()).toList();
    }
    if(auditions != null) {
      _data["auditions"] = auditions?.map((e) => e.toJson()).toList();
    }
    if(stories != null) {
      _data["stories"] = stories?.toJson();
    }
    _data["notification_count"] = notificationCount;
    return _data;
  }
}

class Stories {
  int? count;
  List<dynamic>? stories;
  int? storycreater;

  Stories({this.count, this.stories, this.storycreater});

  Stories.fromJson(Map<String, dynamic> json) {
    if(json["count"] is int) {
      count = json["count"];
    }
    if(json["stories"] is List) {
      stories = json["stories"] ?? [];
    }
    if(json["storycreater"] is int) {
      storycreater = json["storycreater"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    if(stories != null) {
      _data["stories"] = stories;
    }
    _data["storycreater"] = storycreater;
    return _data;
  }
}

class Auditions {
  int? id;
  int? userId;
  int? categoryId;
  int? projectId;
  String? jobrole;
  String? description;
  dynamic location;
  String? gender;
  dynamic ageGroup;
  dynamic expertiseIn;
  String? skillset;
  dynamic experience;
  dynamic requiredMediaType;
  dynamic requiredMedia;
  String? auditionFile;
  String? auditionType;
  dynamic address;
  dynamic timing;
  String? startDate;
  String? endDate;
  String? coins;
  String? auditionModule;
  int? status;
  int? deleteStatus;
  int? displayOrder;
  String? createdAt;
  String? updatedAt;
  User1? user;
  Project1? project;

  Auditions({this.id, this.userId, this.categoryId, this.projectId, this.jobrole, this.description, this.location, this.gender, this.ageGroup, this.expertiseIn, this.skillset, this.experience, this.requiredMediaType, this.requiredMedia, this.auditionFile, this.auditionType, this.address, this.timing, this.startDate, this.endDate, this.coins, this.auditionModule, this.status, this.deleteStatus, this.displayOrder, this.createdAt, this.updatedAt, this.user, this.project});

  Auditions.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["category_id"] is int) {
      categoryId = json["category_id"];
    }
    if(json["project_id"] is int) {
      projectId = json["project_id"];
    }
    if(json["jobrole"] is String) {
      jobrole = json["jobrole"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    location = json["location"];
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    ageGroup = json["age_group"];
    expertiseIn = json["expertise_in"];
    if(json["skillset"] is String) {
      skillset = json["skillset"];
    }
    experience = json["experience"];
    requiredMediaType = json["required_media_type"];
    requiredMedia = json["required_media"];
    if(json["audition_file"] is String) {
      auditionFile = json["audition_file"];
    }
    if(json["audition_type"] is String) {
      auditionType = json["audition_type"];
    }
    address = json["address"];
    timing = json["timing"];
    if(json["start_date"] is String) {
      startDate = json["start_date"];
    }
    if(json["end_date"] is String) {
      endDate = json["end_date"];
    }
    if(json["coins"] is String) {
      coins = json["coins"];
    }
    if(json["audition_module"] is String) {
      auditionModule = json["audition_module"];
    }
    if(json["status"] is int) {
      status = json["status"];
    }
    if(json["delete_status"] is int) {
      deleteStatus = json["delete_status"];
    }
    if(json["display_order"] is int) {
      displayOrder = json["display_order"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if(json["user"] is Map) {
      user = json["user"] == null ? null : User1.fromJson(json["user"]);
    }
    if(json["project"] is Map) {
      project = json["project"] == null ? null : Project1.fromJson(json["project"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["user_id"] = userId;
    _data["category_id"] = categoryId;
    _data["project_id"] = projectId;
    _data["jobrole"] = jobrole;
    _data["description"] = description;
    _data["location"] = location;
    _data["gender"] = gender;
    _data["age_group"] = ageGroup;
    _data["expertise_in"] = expertiseIn;
    _data["skillset"] = skillset;
    _data["experience"] = experience;
    _data["required_media_type"] = requiredMediaType;
    _data["required_media"] = requiredMedia;
    _data["audition_file"] = auditionFile;
    _data["audition_type"] = auditionType;
    _data["address"] = address;
    _data["timing"] = timing;
    _data["start_date"] = startDate;
    _data["end_date"] = endDate;
    _data["coins"] = coins;
    _data["audition_module"] = auditionModule;
    _data["status"] = status;
    _data["delete_status"] = deleteStatus;
    _data["display_order"] = displayOrder;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    if(project != null) {
      _data["project"] = project?.toJson();
    }
    return _data;
  }
}

class Project1 {
  int? id;
  int? typeId;
  int? parentTypeId;
  String? languageId;
  int? userId;
  String? projectName;
  String? projectLogo;
  String? auditionBanner;
  String? description;
  String? startDate;
  String? endDate;
  String? tagLine;
  String? createdOn;
  dynamic creditArtizt;
  dynamic projectAssociation;
  dynamic tagProject;
  dynamic productPitch;
  String? projectUrl;
  int? projectPercentage;
  String? projectStatus;
  dynamic projectProgressStatus;
  int? trendingstatus;
  int? displayOrder;
  int? deleteStatus;
  int? status;
  String? metaTitle;
  String? metaKeyword;
  String? metaDescription;
  String? tags;
  dynamic keyPharses;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  int? projectViewsCount;
  String? auditionBannerUrl;
  String? projectLogoUrl;
  int? projectLikesCount;
  bool? haveFollowing;
  bool? haveLiked;
  bool? haveWishlist;

  Project1({this.id, this.typeId, this.parentTypeId, this.languageId, this.userId, this.projectName, this.projectLogo, this.auditionBanner, this.description, this.startDate, this.endDate, this.tagLine, this.createdOn, this.creditArtizt, this.projectAssociation, this.tagProject, this.productPitch, this.projectUrl, this.projectPercentage, this.projectStatus, this.projectProgressStatus, this.trendingstatus, this.displayOrder, this.deleteStatus, this.status, this.metaTitle, this.metaKeyword, this.metaDescription, this.tags, this.keyPharses, this.createdAt, this.updatedAt, this.deletedAt, this.projectViewsCount, this.auditionBannerUrl, this.projectLogoUrl, this.projectLikesCount, this.haveFollowing, this.haveLiked, this.haveWishlist});

  Project1.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["type_id"] is int) {
      typeId = json["type_id"];
    }
    if(json["parent_type_id"] is int) {
      parentTypeId = json["parent_type_id"];
    }
    if(json["language_id"] is String) {
      languageId = json["language_id"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["project_name"] is String) {
      projectName = json["project_name"];
    }
    if(json["project_logo"] is String) {
      projectLogo = json["project_logo"];
    }
    if(json["audition_banner"] is String) {
      auditionBanner = json["audition_banner"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["start_date"] is String) {
      startDate = json["start_date"];
    }
    if(json["end_date"] is String) {
      endDate = json["end_date"];
    }
    if(json["tag_line"] is String) {
      tagLine = json["tag_line"];
    }
    if(json["created_on"] is String) {
      createdOn = json["created_on"];
    }
    creditArtizt = json["credit_artizt"];
    projectAssociation = json["project_association"];
    tagProject = json["tag_project"];
    productPitch = json["product_pitch"];
    if(json["project_url"] is String) {
      projectUrl = json["project_url"];
    }
    if(json["project_percentage"] is int) {
      projectPercentage = json["project_percentage"];
    }
    if(json["project_status"] is String) {
      projectStatus = json["project_status"];
    }
    projectProgressStatus = json["project_progress_status"];
    if(json["trendingstatus"] is int) {
      trendingstatus = json["trendingstatus"];
    }
    if(json["display_order"] is int) {
      displayOrder = json["display_order"];
    }
    if(json["delete_status"] is int) {
      deleteStatus = json["delete_status"];
    }
    if(json["status"] is int) {
      status = json["status"];
    }
    if(json["meta_title"] is String) {
      metaTitle = json["meta_title"];
    }
    if(json["meta_keyword"] is String) {
      metaKeyword = json["meta_keyword"];
    }
    if(json["meta_description"] is String) {
      metaDescription = json["meta_description"];
    }
    if(json["tags"] is String) {
      tags = json["tags"];
    }
    keyPharses = json["key_pharses"];
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    deletedAt = json["deleted_at"];
    if(json["project_views_count"] is int) {
      projectViewsCount = json["project_views_count"];
    }
    if(json["audition_banner_url"] is String) {
      auditionBannerUrl = json["audition_banner_url"];
    }
    if(json["project_logo_url"] is String) {
      projectLogoUrl = json["project_logo_url"];
    }
    if(json["project_likes_count"] is int) {
      projectLikesCount = json["project_likes_count"];
    }
    if(json["have_following"] is bool) {
      haveFollowing = json["have_following"];
    }
    if(json["have_liked"] is bool) {
      haveLiked = json["have_liked"];
    }
    if(json["have_wishlist"] is bool) {
      haveWishlist = json["have_wishlist"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["type_id"] = typeId;
    _data["parent_type_id"] = parentTypeId;
    _data["language_id"] = languageId;
    _data["user_id"] = userId;
    _data["project_name"] = projectName;
    _data["project_logo"] = projectLogo;
    _data["audition_banner"] = auditionBanner;
    _data["description"] = description;
    _data["start_date"] = startDate;
    _data["end_date"] = endDate;
    _data["tag_line"] = tagLine;
    _data["created_on"] = createdOn;
    _data["credit_artizt"] = creditArtizt;
    _data["project_association"] = projectAssociation;
    _data["tag_project"] = tagProject;
    _data["product_pitch"] = productPitch;
    _data["project_url"] = projectUrl;
    _data["project_percentage"] = projectPercentage;
    _data["project_status"] = projectStatus;
    _data["project_progress_status"] = projectProgressStatus;
    _data["trendingstatus"] = trendingstatus;
    _data["display_order"] = displayOrder;
    _data["delete_status"] = deleteStatus;
    _data["status"] = status;
    _data["meta_title"] = metaTitle;
    _data["meta_keyword"] = metaKeyword;
    _data["meta_description"] = metaDescription;
    _data["tags"] = tags;
    _data["key_pharses"] = keyPharses;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["deleted_at"] = deletedAt;
    _data["project_views_count"] = projectViewsCount;
    _data["audition_banner_url"] = auditionBannerUrl;
    _data["project_logo_url"] = projectLogoUrl;
    _data["project_likes_count"] = projectLikesCount;
    _data["have_following"] = haveFollowing;
    _data["have_liked"] = haveLiked;
    _data["have_wishlist"] = haveWishlist;
    return _data;
  }
}

class User1 {
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

  User1({this.id, this.usertypeId, this.membershipId, this.name, this.gender, this.dob, this.age, this.email, this.phone, this.aboutme, this.designation, this.username, this.address, this.landmark, this.city, this.state, this.country, this.education, this.height, this.weight, this.homeTown, this.livingTown, this.profilePicture, this.languagesId, this.skillsId, this.views, this.followers, this.likes, this.comments, this.userAvailability, this.artiztCategoryId, this.facebook, this.twitter, this.linkedin, this.instagram, this.googleplus, this.apple, this.youtube, this.aboutMe, this.association, this.coverphoto, this.metaTitle, this.metaKeyword, this.metaDescription, this.tags, this.keyPhrase, this.commentPermission, this.profileViewPermission, this.projectViewPermission, this.storeViewPermission, this.fncPermission, this.postsPermission, this.messagePermission, this.callPermission, this.blockUsers, this.status, this.deleteStatus, this.joinId, this.createdAt, this.anNetworkId, this.anAccountNumber, this.primaryArt, this.primaryDesignation, this.countryCode, this.updatedAt, this.otpExpiry, this.verifiedStatus, this.loginStatus, this.loginType, this.updateMobile, this.updateEmail, this.updateOtp, this.updateExpiry, this.deletedAt, this.activeStatus, this.avatar, this.darkMode, this.deletedTime, this.messengerColor, this.followersCount, this.profilePictureUrl, this.coverphotoUrl});

  User1.fromJson(Map<String, dynamic> json) {
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

class Fncs {
  Fnc? fnc;
  User? user;
  Project? project;

  Fncs({this.fnc, this.user, this.project});

  Fncs.fromJson(Map<String, dynamic> json) {
    if(json["fnc"] is Map) {
      fnc = json["fnc"] == null ? null : Fnc.fromJson(json["fnc"]);
    }
    if(json["user"] is Map) {
      user = json["user"] == null ? null : User.fromJson(json["user"]);
    }
    if(json["project"] is Map) {
      project = json["project"] == null ? null : Project.fromJson(json["project"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(fnc != null) {
      _data["fnc"] = fnc?.toJson();
    }
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    if(project != null) {
      _data["project"] = project?.toJson();
    }
    return _data;
  }
}

class Project {
  int? id;
  int? typeId;
  int? parentTypeId;
  String? languageId;
  int? userId;
  String? projectName;
  String? projectLogo;
  String? auditionBanner;
  String? description;
  String? startDate;
  String? endDate;
  String? tagLine;
  String? createdOn;
  dynamic creditArtizt;
  dynamic projectAssociation;
  dynamic tagProject;
  dynamic productPitch;
  String? projectUrl;
  int? projectPercentage;
  String? projectStatus;
  dynamic projectProgressStatus;
  int? trendingstatus;
  int? displayOrder;
  int? deleteStatus;
  int? status;
  String? metaTitle;
  String? metaKeyword;
  String? metaDescription;
  String? tags;
  dynamic keyPharses;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  int? projectViewsCount;
  String? auditionBannerUrl;
  String? projectLogoUrl;
  int? projectLikesCount;
  bool? haveFollowing;
  bool? haveLiked;
  bool? haveWishlist;

  Project({this.id, this.typeId, this.parentTypeId, this.languageId, this.userId, this.projectName, this.projectLogo, this.auditionBanner, this.description, this.startDate, this.endDate, this.tagLine, this.createdOn, this.creditArtizt, this.projectAssociation, this.tagProject, this.productPitch, this.projectUrl, this.projectPercentage, this.projectStatus, this.projectProgressStatus, this.trendingstatus, this.displayOrder, this.deleteStatus, this.status, this.metaTitle, this.metaKeyword, this.metaDescription, this.tags, this.keyPharses, this.createdAt, this.updatedAt, this.deletedAt, this.projectViewsCount, this.auditionBannerUrl, this.projectLogoUrl, this.projectLikesCount, this.haveFollowing, this.haveLiked, this.haveWishlist});

  Project.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["type_id"] is int) {
      typeId = json["type_id"];
    }
    if(json["parent_type_id"] is int) {
      parentTypeId = json["parent_type_id"];
    }
    if(json["language_id"] is String) {
      languageId = json["language_id"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["project_name"] is String) {
      projectName = json["project_name"];
    }
    if(json["project_logo"] is String) {
      projectLogo = json["project_logo"];
    }
    if(json["audition_banner"] is String) {
      auditionBanner = json["audition_banner"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["start_date"] is String) {
      startDate = json["start_date"];
    }
    if(json["end_date"] is String) {
      endDate = json["end_date"];
    }
    if(json["tag_line"] is String) {
      tagLine = json["tag_line"];
    }
    if(json["created_on"] is String) {
      createdOn = json["created_on"];
    }
    creditArtizt = json["credit_artizt"];
    projectAssociation = json["project_association"];
    tagProject = json["tag_project"];
    productPitch = json["product_pitch"];
    if(json["project_url"] is String) {
      projectUrl = json["project_url"];
    }
    if(json["project_percentage"] is int) {
      projectPercentage = json["project_percentage"];
    }
    if(json["project_status"] is String) {
      projectStatus = json["project_status"];
    }
    projectProgressStatus = json["project_progress_status"];
    if(json["trendingstatus"] is int) {
      trendingstatus = json["trendingstatus"];
    }
    if(json["display_order"] is int) {
      displayOrder = json["display_order"];
    }
    if(json["delete_status"] is int) {
      deleteStatus = json["delete_status"];
    }
    if(json["status"] is int) {
      status = json["status"];
    }
    if(json["meta_title"] is String) {
      metaTitle = json["meta_title"];
    }
    if(json["meta_keyword"] is String) {
      metaKeyword = json["meta_keyword"];
    }
    if(json["meta_description"] is String) {
      metaDescription = json["meta_description"];
    }
    if(json["tags"] is String) {
      tags = json["tags"];
    }
    keyPharses = json["key_pharses"];
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    deletedAt = json["deleted_at"];
    if(json["project_views_count"] is int) {
      projectViewsCount = json["project_views_count"];
    }
    if(json["audition_banner_url"] is String) {
      auditionBannerUrl = json["audition_banner_url"];
    }
    if(json["project_logo_url"] is String) {
      projectLogoUrl = json["project_logo_url"];
    }
    if(json["project_likes_count"] is int) {
      projectLikesCount = json["project_likes_count"];
    }
    if(json["have_following"] is bool) {
      haveFollowing = json["have_following"];
    }
    if(json["have_liked"] is bool) {
      haveLiked = json["have_liked"];
    }
    if(json["have_wishlist"] is bool) {
      haveWishlist = json["have_wishlist"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["type_id"] = typeId;
    _data["parent_type_id"] = parentTypeId;
    _data["language_id"] = languageId;
    _data["user_id"] = userId;
    _data["project_name"] = projectName;
    _data["project_logo"] = projectLogo;
    _data["audition_banner"] = auditionBanner;
    _data["description"] = description;
    _data["start_date"] = startDate;
    _data["end_date"] = endDate;
    _data["tag_line"] = tagLine;
    _data["created_on"] = createdOn;
    _data["credit_artizt"] = creditArtizt;
    _data["project_association"] = projectAssociation;
    _data["tag_project"] = tagProject;
    _data["product_pitch"] = productPitch;
    _data["project_url"] = projectUrl;
    _data["project_percentage"] = projectPercentage;
    _data["project_status"] = projectStatus;
    _data["project_progress_status"] = projectProgressStatus;
    _data["trendingstatus"] = trendingstatus;
    _data["display_order"] = displayOrder;
    _data["delete_status"] = deleteStatus;
    _data["status"] = status;
    _data["meta_title"] = metaTitle;
    _data["meta_keyword"] = metaKeyword;
    _data["meta_description"] = metaDescription;
    _data["tags"] = tags;
    _data["key_pharses"] = keyPharses;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["deleted_at"] = deletedAt;
    _data["project_views_count"] = projectViewsCount;
    _data["audition_banner_url"] = auditionBannerUrl;
    _data["project_logo_url"] = projectLogoUrl;
    _data["project_likes_count"] = projectLikesCount;
    _data["have_following"] = haveFollowing;
    _data["have_liked"] = haveLiked;
    _data["have_wishlist"] = haveWishlist;
    return _data;
  }
}

class User {
  User();

  User.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class Fnc {
  int? id;
  int? userId;
  String? fncType;
  int? projectId;
  String? jobTitle;
  String? shortDescription;
  String? workHrs;
  String? workFor;
  String? workType;
  int? price;
  String? fncSkills;
  String? workMethod;
  String? promote;
  String? fncUrl;
  String? progress;
  int? percentage;
  dynamic fncStatus;
  int? status;
  int? deleteStatus;
  String? createdAt;
  String? updatedAt;

  Fnc({this.id, this.userId, this.fncType, this.projectId, this.jobTitle, this.shortDescription, this.workHrs, this.workFor, this.workType, this.price, this.fncSkills, this.workMethod, this.promote, this.fncUrl, this.progress, this.percentage, this.fncStatus, this.status, this.deleteStatus, this.createdAt, this.updatedAt});

  Fnc.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["fnc_type"] is String) {
      fncType = json["fnc_type"];
    }
    if(json["project_id"] is int) {
      projectId = json["project_id"];
    }
    if(json["job_title"] is String) {
      jobTitle = json["job_title"];
    }
    if(json["short_description"] is String) {
      shortDescription = json["short_description"];
    }
    if(json["work_hrs"] is String) {
      workHrs = json["work_hrs"];
    }
    if(json["work_for"] is String) {
      workFor = json["work_for"];
    }
    if(json["work_type"] is String) {
      workType = json["work_type"];
    }
    if(json["price"] is int) {
      price = json["price"];
    }
    if(json["fnc_skills"] is String) {
      fncSkills = json["fnc_skills"];
    }
    if(json["work_method"] is String) {
      workMethod = json["work_method"];
    }
    if(json["promote"] is String) {
      promote = json["promote"];
    }
    if(json["fnc_url"] is String) {
      fncUrl = json["fnc_url"];
    }
    if(json["progress"] is String) {
      progress = json["progress"];
    }
    if(json["percentage"] is int) {
      percentage = json["percentage"];
    }
    fncStatus = json["fnc_status"];
    if(json["status"] is int) {
      status = json["status"];
    }
    if(json["delete_status"] is int) {
      deleteStatus = json["delete_status"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["user_id"] = userId;
    _data["fnc_type"] = fncType;
    _data["project_id"] = projectId;
    _data["job_title"] = jobTitle;
    _data["short_description"] = shortDescription;
    _data["work_hrs"] = workHrs;
    _data["work_for"] = workFor;
    _data["work_type"] = workType;
    _data["price"] = price;
    _data["fnc_skills"] = fncSkills;
    _data["work_method"] = workMethod;
    _data["promote"] = promote;
    _data["fnc_url"] = fncUrl;
    _data["progress"] = progress;
    _data["percentage"] = percentage;
    _data["fnc_status"] = fncStatus;
    _data["status"] = status;
    _data["delete_status"] = deleteStatus;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}

class Events {
  int? count;
  List<Data3>? data;

  Events({this.count, this.data});

  Events.fromJson(Map<String, dynamic> json) {
    if(json["count"] is int) {
      count = json["count"];
    }
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data3.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Data3 {
  Event? event;
  List<dynamic>? eventSpeakers;

  Data3({this.event, this.eventSpeakers});

  Data3.fromJson(Map<String, dynamic> json) {
    if(json["event"] is Map) {
      event = json["event"] == null ? null : Event.fromJson(json["event"]);
    }
    if(json["event_speakers"] is List) {
      eventSpeakers = json["event_speakers"] == null ? null : List<dynamic>.from(json["event_speakers"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(event != null) {
      _data["event"] = event?.toJson();
    }
    if(eventSpeakers != null) {
      _data["event_speakers"] = eventSpeakers;
    }
    return _data;
  }
}

class Event {
  int? id;
  int? userId;
  String? title;
  int? eventCategory;
  int? eventSubCategory;
  String? eventlogo;
  dynamic eventposter;
  String? shortDescription;
  String? description;
  String? eventStatus;
  String? eventType;
  String? eventUrl;
  dynamic location;
  String? startDate;
  String? endDate;
  String? startTiming;
  String? endTiming;
  String? eventTimezone;
  String? maxBookingslot;
  String? availableSlots;
  dynamic externalUrl;
  String? ticketPrice;
  String? metaTitle;
  String? metaKeyword;
  String? metaDescription;
  String? tags;
  dynamic keyPharses;
  int? status;
  int? deleteStatus;
  String? createdAt;
  String? updatedAt;
  String? poster;

  Event({this.id, this.userId, this.title, this.eventCategory, this.eventSubCategory, this.eventlogo, this.eventposter, this.shortDescription, this.description, this.eventStatus, this.eventType, this.eventUrl, this.location, this.startDate, this.endDate, this.startTiming, this.endTiming, this.eventTimezone, this.maxBookingslot, this.availableSlots, this.externalUrl, this.ticketPrice, this.metaTitle, this.metaKeyword, this.metaDescription, this.tags, this.keyPharses, this.status, this.deleteStatus, this.createdAt, this.updatedAt, this.poster});

  Event.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["event_category"] is int) {
      eventCategory = json["event_category"];
    }
    if(json["event_sub_category"] is int) {
      eventSubCategory = json["event_sub_category"];
    }
    if(json["eventlogo"] is String) {
      eventlogo = json["eventlogo"];
    }
    eventposter = json["eventposter"];
    if(json["short_description"] is String) {
      shortDescription = json["short_description"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["event_status"] is String) {
      eventStatus = json["event_status"];
    }
    if(json["event_type"] is String) {
      eventType = json["event_type"];
    }
    if(json["event_url"] is String) {
      eventUrl = json["event_url"];
    }
    location = json["location"];
    if(json["start_date"] is String) {
      startDate = json["start_date"];
    }
    if(json["end_date"] is String) {
      endDate = json["end_date"];
    }
    if(json["start_timing"] is String) {
      startTiming = json["start_timing"];
    }
    if(json["end_timing"] is String) {
      endTiming = json["end_timing"];
    }
    if(json["event_timezone"] is String) {
      eventTimezone = json["event_timezone"];
    }
    if(json["max_bookingslot"] is String) {
      maxBookingslot = json["max_bookingslot"];
    }
    if(json["available_slots"] is String) {
      availableSlots = json["available_slots"];
    }
    externalUrl = json["external_url"];
    if(json["ticket_price"] is String) {
      ticketPrice = json["ticket_price"];
    }
    if(json["meta_title"] is String) {
      metaTitle = json["meta_title"];
    }
    if(json["meta_keyword"] is String) {
      metaKeyword = json["meta_keyword"];
    }
    if(json["meta_description"] is String) {
      metaDescription = json["meta_description"];
    }
    if(json["tags"] is String) {
      tags = json["tags"];
    }
    keyPharses = json["key_pharses"];
    if(json["status"] is int) {
      status = json["status"];
    }
    if(json["delete_status"] is int) {
      deleteStatus = json["delete_status"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if(json["poster"] is String) {
      poster = json["poster"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["user_id"] = userId;
    _data["title"] = title;
    _data["event_category"] = eventCategory;
    _data["event_sub_category"] = eventSubCategory;
    _data["eventlogo"] = eventlogo;
    _data["eventposter"] = eventposter;
    _data["short_description"] = shortDescription;
    _data["description"] = description;
    _data["event_status"] = eventStatus;
    _data["event_type"] = eventType;
    _data["event_url"] = eventUrl;
    _data["location"] = location;
    _data["start_date"] = startDate;
    _data["end_date"] = endDate;
    _data["start_timing"] = startTiming;
    _data["end_timing"] = endTiming;
    _data["event_timezone"] = eventTimezone;
    _data["max_bookingslot"] = maxBookingslot;
    _data["available_slots"] = availableSlots;
    _data["external_url"] = externalUrl;
    _data["ticket_price"] = ticketPrice;
    _data["meta_title"] = metaTitle;
    _data["meta_keyword"] = metaKeyword;
    _data["meta_description"] = metaDescription;
    _data["tags"] = tags;
    _data["key_pharses"] = keyPharses;
    _data["status"] = status;
    _data["delete_status"] = deleteStatus;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["poster"] = poster;
    return _data;
  }
}

class Stores {
  int? count;
  List<Data2>? data;

  Stores({this.count, this.data});

  Stores.fromJson(Map<String, dynamic> json) {
    if(json["count"] is int) {
      count = json["count"];
    }
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data2.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Data2 {
  int? id;
  int? categoryId;
  int? industryId;
  int? offerId;
  int? userId;
  String? name;
  String? logo;
  String? storebanner;
  String? price;
  String? metaTitle;
  String? metaKeyword;
  String? metaDescription;
  String? tags;
  dynamic keyPhrase;
  int? status;
  int? deleteStatus;
  int? displayOrder;
  String? storeUrl;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? storeLogoUrl;
  String? storeBannerUrl;

  Data2({this.id, this.categoryId, this.industryId, this.offerId, this.userId, this.name, this.logo, this.storebanner, this.price, this.metaTitle, this.metaKeyword, this.metaDescription, this.tags, this.keyPhrase, this.status, this.deleteStatus, this.displayOrder, this.storeUrl, this.createdAt, this.updatedAt, this.deletedAt, this.storeLogoUrl, this.storeBannerUrl});

  Data2.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["category_id"] is int) {
      categoryId = json["category_id"];
    }
    if(json["industry_id"] is int) {
      industryId = json["industry_id"];
    }
    if(json["offer_id"] is int) {
      offerId = json["offer_id"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["logo"] is String) {
      logo = json["logo"];
    }
    if(json["storebanner"] is String) {
      storebanner = json["storebanner"];
    }
    if(json["price"] is String) {
      price = json["price"];
    }
    if(json["meta_title"] is String) {
      metaTitle = json["meta_title"];
    }
    if(json["meta_keyword"] is String) {
      metaKeyword = json["meta_keyword"];
    }
    if(json["meta_description"] is String) {
      metaDescription = json["meta_description"];
    }
    if(json["tags"] is String) {
      tags = json["tags"];
    }
    keyPhrase = json["key_phrase"];
    if(json["status"] is int) {
      status = json["status"];
    }
    if(json["delete_status"] is int) {
      deleteStatus = json["delete_status"];
    }
    if(json["display_order"] is int) {
      displayOrder = json["display_order"];
    }
    if(json["store_url"] is String) {
      storeUrl = json["store_url"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    deletedAt = json["deleted_at"];
    if(json["store_logo_url"] is String) {
      storeLogoUrl = json["store_logo_url"];
    }
    if(json["store_banner_url"] is String) {
      storeBannerUrl = json["store_banner_url"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["category_id"] = categoryId;
    _data["industry_id"] = industryId;
    _data["offer_id"] = offerId;
    _data["user_id"] = userId;
    _data["name"] = name;
    _data["logo"] = logo;
    _data["storebanner"] = storebanner;
    _data["price"] = price;
    _data["meta_title"] = metaTitle;
    _data["meta_keyword"] = metaKeyword;
    _data["meta_description"] = metaDescription;
    _data["tags"] = tags;
    _data["key_phrase"] = keyPhrase;
    _data["status"] = status;
    _data["delete_status"] = deleteStatus;
    _data["display_order"] = displayOrder;
    _data["store_url"] = storeUrl;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["deleted_at"] = deletedAt;
    _data["store_logo_url"] = storeLogoUrl;
    _data["store_banner_url"] = storeBannerUrl;
    return _data;
  }
}

class Artizts {
  int? count;
  List<Data1>? data;

  Artizts({this.count, this.data});

  Artizts.fromJson(Map<String, dynamic> json) {
    if(json["count"] is int) {
      count = json["count"];
    }
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data1.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Data1 {
  int? id;
  String? name;
  dynamic industry;
  dynamic artForm;
  bool? isFollowing;
  String? profilePhoto;
  String? coverPhoto;
  dynamic primaryDesignation;

  Data1({this.id, this.name, this.industry, this.artForm, this.isFollowing, this.profilePhoto, this.coverPhoto, this.primaryDesignation});

  Data1.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    industry = json["industry"];
    artForm = json["art_form"];
    if(json["is_following"] is bool) {
      isFollowing = json["is_following"];
    }
    if(json["profile_photo"] is String) {
      profilePhoto = json["profile_photo"];
    }
    if(json["cover_photo"] is String) {
      coverPhoto = json["cover_photo"];
    }
    primaryDesignation = json["primary_designation"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["industry"] = industry;
    _data["art_form"] = artForm;
    _data["is_following"] = isFollowing;
    _data["profile_photo"] = profilePhoto;
    _data["cover_photo"] = coverPhoto;
    _data["primary_designation"] = primaryDesignation;
    return _data;
  }
}

class Projects {
  int? count;
  List<Data>? data;

  Projects({this.count, this.data});

  Projects.fromJson(Map<String, dynamic> json) {
    if(json["count"] is int) {
      count = json["count"];
    }
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Data {
  int? id;
  int? typeId;
  int? parentTypeId;
  String? languageId;
  int? userId;
  String? projectName;
  String? projectLogo;
  String? auditionBanner;
  String? description;
  String? startDate;
  String? endDate;
  String? tagLine;
  String? createdOn;
  dynamic creditArtizt;
  dynamic projectAssociation;
  dynamic tagProject;
  dynamic productPitch;
  String? projectUrl;
  int? projectPercentage;
  String? projectStatus;
  dynamic projectProgressStatus;
  int? trendingstatus;
  int? displayOrder;
  int? deleteStatus;
  int? status;
  dynamic metaTitle;
  dynamic metaKeyword;
  dynamic metaDescription;
  dynamic tags;
  dynamic keyPharses;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  bool? isfnc;
  bool? iscasting;
  dynamic casting;
  dynamic fnc;
  String? createdBy;
  int? projectViewsCount;
  String? auditionBannerUrl;
  String? projectLogoUrl;
  int? projectLikesCount;
  bool? haveFollowing;
  bool? haveLiked;
  bool? haveWishlist;

  Data({this.id, this.typeId, this.parentTypeId, this.languageId, this.userId, this.projectName, this.projectLogo, this.auditionBanner, this.description, this.startDate, this.endDate, this.tagLine, this.createdOn, this.creditArtizt, this.projectAssociation, this.tagProject, this.productPitch, this.projectUrl, this.projectPercentage, this.projectStatus, this.projectProgressStatus, this.trendingstatus, this.displayOrder, this.deleteStatus, this.status, this.metaTitle, this.metaKeyword, this.metaDescription, this.tags, this.keyPharses, this.createdAt, this.updatedAt, this.deletedAt, this.isfnc, this.iscasting, this.casting, this.fnc, this.createdBy, this.projectViewsCount, this.auditionBannerUrl, this.projectLogoUrl, this.projectLikesCount, this.haveFollowing, this.haveLiked, this.haveWishlist});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["type_id"] is int) {
      typeId = json["type_id"];
    }
    if(json["parent_type_id"] is int) {
      parentTypeId = json["parent_type_id"];
    }
    if(json["language_id"] is String) {
      languageId = json["language_id"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["project_name"] is String) {
      projectName = json["project_name"];
    }
    if(json["project_logo"] is String) {
      projectLogo = json["project_logo"];
    }
    if(json["audition_banner"] is String) {
      auditionBanner = json["audition_banner"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["start_date"] is String) {
      startDate = json["start_date"];
    }
    if(json["end_date"] is String) {
      endDate = json["end_date"];
    }
    if(json["tag_line"] is String) {
      tagLine = json["tag_line"];
    }
    if(json["created_on"] is String) {
      createdOn = json["created_on"];
    }
    creditArtizt = json["credit_artizt"];
    projectAssociation = json["project_association"];
    tagProject = json["tag_project"];
    productPitch = json["product_pitch"];
    if(json["project_url"] is String) {
      projectUrl = json["project_url"];
    }
    if(json["project_percentage"] is int) {
      projectPercentage = json["project_percentage"];
    }
    if(json["project_status"] is String) {
      projectStatus = json["project_status"];
    }
    projectProgressStatus = json["project_progress_status"];
    if(json["trendingstatus"] is int) {
      trendingstatus = json["trendingstatus"];
    }
    if(json["display_order"] is int) {
      displayOrder = json["display_order"];
    }
    if(json["delete_status"] is int) {
      deleteStatus = json["delete_status"];
    }
    if(json["status"] is int) {
      status = json["status"];
    }
    metaTitle = json["meta_title"];
    metaKeyword = json["meta_keyword"];
    metaDescription = json["meta_description"];
    tags = json["tags"];
    keyPharses = json["key_pharses"];
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    deletedAt = json["deleted_at"];
    if(json["isfnc"] is bool) {
      isfnc = json["isfnc"];
    }
    if(json["iscasting"] is bool) {
      iscasting = json["iscasting"];
    }
    casting = json["casting"];
    fnc = json["fnc"];
    if(json["created_by"] is String) {
      createdBy = json["created_by"];
    }
    if(json["project_views_count"] is int) {
      projectViewsCount = json["project_views_count"];
    }
    if(json["audition_banner_url"] is String) {
      auditionBannerUrl = json["audition_banner_url"];
    }
    if(json["project_logo_url"] is String) {
      projectLogoUrl = json["project_logo_url"];
    }
    if(json["project_likes_count"] is int) {
      projectLikesCount = json["project_likes_count"];
    }
    if(json["have_following"] is bool) {
      haveFollowing = json["have_following"];
    }
    if(json["have_liked"] is bool) {
      haveLiked = json["have_liked"];
    }
    if(json["have_wishlist"] is bool) {
      haveWishlist = json["have_wishlist"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["type_id"] = typeId;
    _data["parent_type_id"] = parentTypeId;
    _data["language_id"] = languageId;
    _data["user_id"] = userId;
    _data["project_name"] = projectName;
    _data["project_logo"] = projectLogo;
    _data["audition_banner"] = auditionBanner;
    _data["description"] = description;
    _data["start_date"] = startDate;
    _data["end_date"] = endDate;
    _data["tag_line"] = tagLine;
    _data["created_on"] = createdOn;
    _data["credit_artizt"] = creditArtizt;
    _data["project_association"] = projectAssociation;
    _data["tag_project"] = tagProject;
    _data["product_pitch"] = productPitch;
    _data["project_url"] = projectUrl;
    _data["project_percentage"] = projectPercentage;
    _data["project_status"] = projectStatus;
    _data["project_progress_status"] = projectProgressStatus;
    _data["trendingstatus"] = trendingstatus;
    _data["display_order"] = displayOrder;
    _data["delete_status"] = deleteStatus;
    _data["status"] = status;
    _data["meta_title"] = metaTitle;
    _data["meta_keyword"] = metaKeyword;
    _data["meta_description"] = metaDescription;
    _data["tags"] = tags;
    _data["key_pharses"] = keyPharses;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["deleted_at"] = deletedAt;
    _data["isfnc"] = isfnc;
    _data["iscasting"] = iscasting;
    _data["casting"] = casting;
    _data["fnc"] = fnc;
    _data["created_by"] = createdBy;
    _data["project_views_count"] = projectViewsCount;
    _data["audition_banner_url"] = auditionBannerUrl;
    _data["project_logo_url"] = projectLogoUrl;
    _data["project_likes_count"] = projectLikesCount;
    _data["have_following"] = haveFollowing;
    _data["have_liked"] = haveLiked;
    _data["have_wishlist"] = haveWishlist;
    return _data;
  }
}