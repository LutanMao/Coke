class RecommGod {
  int code;
  String msg;
  List<DataBean> data;

  static RecommGod fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    RecommGod recommGodBean = RecommGod();
    recommGodBean.code = map['code'];
    recommGodBean.msg = map['msg'];
    recommGodBean.data = List()..addAll((map['data'] as List ?? []).map((o) => DataBean.fromMap(o)));
    return recommGodBean;
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
  String username;
  String uid;
  String header;
  int comment;
  dynamic topCommentsVoiceuri;
  String topCommentsContent;
  String topCommentsHeader;
  String topCommentsName;
  String passtime;
  int soureid;
  int up;
  int down;
  int forward;
  dynamic image;
  dynamic gif;
  String thumbnail;
  String video;

  static DataBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    DataBean dataBean = DataBean();
    dataBean.type = map['type'];
    dataBean.text = map['text'];
    dataBean.username = map['username'];
    dataBean.uid = map['uid'];
    dataBean.header = map['header'];
    dataBean.comment = map['comment'];
    dataBean.topCommentsVoiceuri = map['top_commentsVoiceuri'];
    dataBean.topCommentsContent = map['top_commentsContent'];
    dataBean.topCommentsHeader = map['top_commentsHeader'];
    dataBean.topCommentsName = map['top_commentsName'];
    dataBean.passtime = map['passtime'];
    dataBean.soureid = map['soureid'];
    dataBean.up = map['up'];
    dataBean.down = map['down'];
    dataBean.forward = map['forward'];
    dataBean.image = map['image'];
    dataBean.gif = map['gif'];
    dataBean.thumbnail = map['thumbnail'];
    dataBean.video = map['video'];
    return dataBean;
  }

  Map toJson() => {
        "type": type,
        "text": text,
        "username": username,
        "uid": uid,
        "header": header,
        "comment": comment,
        "top_commentsVoiceuri": topCommentsVoiceuri,
        "top_commentsContent": topCommentsContent,
        "top_commentsHeader": topCommentsHeader,
        "top_commentsName": topCommentsName,
        "passtime": passtime,
        "soureid": soureid,
        "up": up,
        "down": down,
        "forward": forward,
        "image": image,
        "gif": gif,
        "thumbnail": thumbnail,
        "video": video,
      };
}
