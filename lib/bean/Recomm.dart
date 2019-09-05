class Recomm {
  int code;
  String msg;
  List<DataBean> data;

  static Recomm fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    Recomm recommBean = Recomm();
    recommBean.code = map['code'];
    recommBean.msg = map['msg'];
    recommBean.data = List()..addAll(
      (map['data'] as List ?? []).map((o) => DataBean.fromMap(o))
    );
    return recommBean;
  }

  Map toJson() => {
    "code": code,
    "msg": msg,
    "data": data,
  };
}

class DataBean {
  String type;
  String text;
  String userId;
  String name;
  String screenName;
  String profileImage;
  String createdAt;
  dynamic createTime;
  String passtime;
  String love;
  String hate;
  String comment;
  String repost;
  String bookmark;
  String bimageuri;
  dynamic voiceuri;
  dynamic voicetime;
  dynamic voicelength;
  String status;
  String themeId;
  String themeName;
  String themeType;
  String videouri;
  int videotime;
  String originalPid;
  int cacheVersion;
  String playcount;
  String playfcount;
  String cai;
  dynamic weixinUrl;
  String image1;
  String image2;
  bool isGif;
  String image0;
  String imageSmall;
  String cdnImg;
  String width;
  String height;
  String tag;
  int t;
  String ding;
  String favourite;
  dynamic topCmt;
  dynamic themes;

  static DataBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    DataBean dataBean = DataBean();
    dataBean.type = map['type'];
    dataBean.text = map['text'];
    dataBean.userId = map['user_id'];
    dataBean.name = map['name'];
    dataBean.screenName = map['screen_name'];
    dataBean.profileImage = map['profile_image'];
    dataBean.createdAt = map['created_at'];
    dataBean.createTime = map['create_time'];
    dataBean.passtime = map['passtime'];
    dataBean.love = map['love'];
    dataBean.hate = map['hate'];
    dataBean.comment = map['comment'];
    dataBean.repost = map['repost'];
    dataBean.bookmark = map['bookmark'];
    dataBean.bimageuri = map['bimageuri'];
    dataBean.voiceuri = map['voiceuri'];
    dataBean.voicetime = map['voicetime'];
    dataBean.voicelength = map['voicelength'];
    dataBean.status = map['status'];
    dataBean.themeId = map['theme_id'];
    dataBean.themeName = map['theme_name'];
    dataBean.themeType = map['theme_type'];
    dataBean.videouri = map['videouri'];
    dataBean.videotime = map['videotime'];
    dataBean.originalPid = map['original_pid'];
    dataBean.cacheVersion = map['cache_version'];
    dataBean.playcount = map['playcount'];
    dataBean.playfcount = map['playfcount'];
    dataBean.cai = map['cai'];
    dataBean.weixinUrl = map['weixin_url'];
    dataBean.image1 = map['image1'];
    dataBean.image2 = map['image2'];
    dataBean.isGif = map['is_gif'];
    dataBean.image0 = map['image0'];
    dataBean.imageSmall = map['image_small'];
    dataBean.cdnImg = map['cdn_img'];
    dataBean.width = map['width'];
    dataBean.height = map['height'];
    dataBean.tag = map['tag'];
    dataBean.t = map['t'];
    dataBean.ding = map['ding'];
    dataBean.favourite = map['favourite'];
    dataBean.topCmt = map['top_cmt'];
    dataBean.themes = map['themes'];
    return dataBean;
  }

  Map toJson() => {
    "type": type,
    "text": text,
    "user_id": userId,
    "name": name,
    "screen_name": screenName,
    "profile_image": profileImage,
    "created_at": createdAt,
    "create_time": createTime,
    "passtime": passtime,
    "love": love,
    "hate": hate,
    "comment": comment,
    "repost": repost,
    "bookmark": bookmark,
    "bimageuri": bimageuri,
    "voiceuri": voiceuri,
    "voicetime": voicetime,
    "voicelength": voicelength,
    "status": status,
    "theme_id": themeId,
    "theme_name": themeName,
    "theme_type": themeType,
    "videouri": videouri,
    "videotime": videotime,
    "original_pid": originalPid,
    "cache_version": cacheVersion,
    "playcount": playcount,
    "playfcount": playfcount,
    "cai": cai,
    "weixin_url": weixinUrl,
    "image1": image1,
    "image2": image2,
    "is_gif": isGif,
    "image0": image0,
    "image_small": imageSmall,
    "cdn_img": cdnImg,
    "width": width,
    "height": height,
    "tag": tag,
    "t": t,
    "ding": ding,
    "favourite": favourite,
    "top_cmt": topCmt,
    "themes": themes,
  };
}