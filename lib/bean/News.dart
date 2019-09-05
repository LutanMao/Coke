class News {
  int code;
  String msg;
  DataBean data;

  static News fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    News newsBean = News();
    newsBean.code = map['code'];
    newsBean.msg = map['msg'];
    newsBean.data = DataBean.fromMap(map['data']);
    return newsBean;
  }

  Map toJson() => {
        "code": code,
        "msg": msg,
        "data": data,
      };
}

class DataBean {
  List<TechBean> tech;
  List<AutoBean> auto;
  List<MoneyBean> money;
  List<SportsBean> sports;
  List<DyBean> dy;
  List<WarBean> war;
  List<EntBean> ent;
  List<ToutiaoBean> toutiao;

  static DataBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    DataBean dataBean = DataBean();
    dataBean.tech = List()..addAll((map['tech'] as List ?? []).map((o) => TechBean.fromMap(o)));
    dataBean.auto = List()..addAll((map['auto'] as List ?? []).map((o) => AutoBean.fromMap(o)));
    dataBean.money = List()..addAll((map['money'] as List ?? []).map((o) => MoneyBean.fromMap(o)));
    dataBean.sports = List()..addAll((map['sports'] as List ?? []).map((o) => SportsBean.fromMap(o)));
    dataBean.dy = List()..addAll((map['dy'] as List ?? []).map((o) => DyBean.fromMap(o)));
    dataBean.war = List()..addAll((map['war'] as List ?? []).map((o) => WarBean.fromMap(o)));
    dataBean.ent = List()..addAll((map['ent'] as List ?? []).map((o) => EntBean.fromMap(o)));
    dataBean.toutiao = List()..addAll((map['toutiao'] as List ?? []).map((o) => ToutiaoBean.fromMap(o)));
    return dataBean;
  }

  Map toJson() => {
        "tech": tech,
        "auto": auto,
        "money": money,
        "sports": sports,
        "dy": dy,
        "war": war,
        "ent": ent,
        "toutiao": toutiao,
      };
}

class ToutiaoBean {
  dynamic liveInfo;
  int tcount;
  List<dynamic> picInfo;
  String docid;
  dynamic videoInfo;
  String channel;
  String link;
  String source;
  String title;
  String type;
  String imgsrcFrom;
  int imgsrc3gtype;
  String unlikeReason;
  bool isTop;
  String digest;
  String typeid;
  dynamic addata;
  String tag;
  String category;
  String ptime;

  static ToutiaoBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    ToutiaoBean toutiaoBean = ToutiaoBean();
    toutiaoBean.liveInfo = map['liveInfo'];
    toutiaoBean.tcount = map['tcount'];
    toutiaoBean.picInfo = map['picInfo'];
    toutiaoBean.docid = map['docid'];
    toutiaoBean.videoInfo = map['videoInfo'];
    toutiaoBean.channel = map['channel'];
    toutiaoBean.link = map['link'];
    toutiaoBean.source = map['source'];
    toutiaoBean.title = map['title'];
    toutiaoBean.type = map['type'];
    toutiaoBean.imgsrcFrom = map['imgsrcFrom'];
    toutiaoBean.imgsrc3gtype = map['imgsrc3gtype'];
    toutiaoBean.unlikeReason = map['unlikeReason'];
    toutiaoBean.isTop = map['isTop'];
    toutiaoBean.digest = map['digest'];
    toutiaoBean.typeid = map['typeid'];
    toutiaoBean.addata = map['addata'];
    toutiaoBean.tag = map['tag'];
    toutiaoBean.category = map['category'];
    toutiaoBean.ptime = map['ptime'];
    return toutiaoBean;
  }

  Map toJson() => {
        "liveInfo": liveInfo,
        "tcount": tcount,
        "picInfo": picInfo,
        "docid": docid,
        "videoInfo": videoInfo,
        "channel": channel,
        "link": link,
        "source": source,
        "title": title,
        "type": type,
        "imgsrcFrom": imgsrcFrom,
        "imgsrc3gtype": imgsrc3gtype,
        "unlikeReason": unlikeReason,
        "isTop": isTop,
        "digest": digest,
        "typeid": typeid,
        "addata": addata,
        "tag": tag,
        "category": category,
        "ptime": ptime,
      };
}

class EntBean {
  dynamic liveInfo;
  int tcount;
  List<PicInfoBean> picInfo;
  String docid;
  dynamic videoInfo;
  String channel;
  String link;
  String source;
  String title;
  String type;
  dynamic imgsrcFrom;
  int imgsrc3gtype;
  String unlikeReason;
  dynamic isTop;
  String digest;
  String typeid;
  dynamic addata;
  String tag;
  String category;
  String ptime;

  static EntBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    EntBean entBean = EntBean();
    entBean.liveInfo = map['liveInfo'];
    entBean.tcount = map['tcount'];
    entBean.picInfo = List()..addAll((map['picInfo'] as List ?? []).map((o) => PicInfoBean.fromMap(o)));
    entBean.docid = map['docid'];
    entBean.videoInfo = map['videoInfo'];
    entBean.channel = map['channel'];
    entBean.link = map['link'];
    entBean.source = map['source'];
    entBean.title = map['title'];
    entBean.type = map['type'];
    entBean.imgsrcFrom = map['imgsrcFrom'];
    entBean.imgsrc3gtype = map['imgsrc3gtype'];
    entBean.unlikeReason = map['unlikeReason'];
    entBean.isTop = map['isTop'];
    entBean.digest = map['digest'];
    entBean.typeid = map['typeid'];
    entBean.addata = map['addata'];
    entBean.tag = map['tag'];
    entBean.category = map['category'];
    entBean.ptime = map['ptime'];
    return entBean;
  }

  Map toJson() => {
        "liveInfo": liveInfo,
        "tcount": tcount,
        "picInfo": picInfo,
        "docid": docid,
        "videoInfo": videoInfo,
        "channel": channel,
        "link": link,
        "source": source,
        "title": title,
        "type": type,
        "imgsrcFrom": imgsrcFrom,
        "imgsrc3gtype": imgsrc3gtype,
        "unlikeReason": unlikeReason,
        "isTop": isTop,
        "digest": digest,
        "typeid": typeid,
        "addata": addata,
        "tag": tag,
        "category": category,
        "ptime": ptime,
      };
}

class PicInfoBean {
  dynamic ref;
  dynamic width;
  String url;
  dynamic height;

  static PicInfoBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    PicInfoBean picInfoBean = PicInfoBean();
    picInfoBean.ref = map['ref'];
    picInfoBean.width = map['width'];
    picInfoBean.url = map['url'];
    picInfoBean.height = map['height'];
    return picInfoBean;
  }

  Map toJson() => {
        "ref": ref,
        "width": width,
        "url": url,
        "height": height,
      };
}

class WarBean {
  dynamic liveInfo;
  int tcount;
  List<PicInfoBean> picInfo;
  String docid;
  dynamic videoInfo;
  String channel;
  String link;
  String source;
  String title;
  String type;
  dynamic imgsrcFrom;
  int imgsrc3gtype;
  String unlikeReason;
  dynamic isTop;
  String digest;
  String typeid;
  dynamic addata;
  String tag;
  String category;
  String ptime;

  static WarBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    WarBean warBean = WarBean();
    warBean.liveInfo = map['liveInfo'];
    warBean.tcount = map['tcount'];
    warBean.picInfo = List()..addAll((map['picInfo'] as List ?? []).map((o) => PicInfoBean.fromMap(o)));
    warBean.docid = map['docid'];
    warBean.videoInfo = map['videoInfo'];
    warBean.channel = map['channel'];
    warBean.link = map['link'];
    warBean.source = map['source'];
    warBean.title = map['title'];
    warBean.type = map['type'];
    warBean.imgsrcFrom = map['imgsrcFrom'];
    warBean.imgsrc3gtype = map['imgsrc3gtype'];
    warBean.unlikeReason = map['unlikeReason'];
    warBean.isTop = map['isTop'];
    warBean.digest = map['digest'];
    warBean.typeid = map['typeid'];
    warBean.addata = map['addata'];
    warBean.tag = map['tag'];
    warBean.category = map['category'];
    warBean.ptime = map['ptime'];
    return warBean;
  }

  Map toJson() => {
        "liveInfo": liveInfo,
        "tcount": tcount,
        "picInfo": picInfo,
        "docid": docid,
        "videoInfo": videoInfo,
        "channel": channel,
        "link": link,
        "source": source,
        "title": title,
        "type": type,
        "imgsrcFrom": imgsrcFrom,
        "imgsrc3gtype": imgsrc3gtype,
        "unlikeReason": unlikeReason,
        "isTop": isTop,
        "digest": digest,
        "typeid": typeid,
        "addata": addata,
        "tag": tag,
        "category": category,
        "ptime": ptime,
      };
}

class DyBean {
  dynamic liveInfo;
  int tcount;
  List<PicInfoBean> picInfo;
  String docid;
  dynamic videoInfo;
  String channel;
  String link;
  String source;
  String title;
  String type;
  dynamic imgsrcFrom;
  int imgsrc3gtype;
  String unlikeReason;
  dynamic isTop;
  String digest;
  String typeid;
  dynamic addata;
  String tag;
  String category;
  String ptime;

  static DyBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    DyBean dyBean = DyBean();
    dyBean.liveInfo = map['liveInfo'];
    dyBean.tcount = map['tcount'];
    dyBean.picInfo = List()..addAll((map['picInfo'] as List ?? []).map((o) => PicInfoBean.fromMap(o)));
    dyBean.docid = map['docid'];
    dyBean.videoInfo = map['videoInfo'];
    dyBean.channel = map['channel'];
    dyBean.link = map['link'];
    dyBean.source = map['source'];
    dyBean.title = map['title'];
    dyBean.type = map['type'];
    dyBean.imgsrcFrom = map['imgsrcFrom'];
    dyBean.imgsrc3gtype = map['imgsrc3gtype'];
    dyBean.unlikeReason = map['unlikeReason'];
    dyBean.isTop = map['isTop'];
    dyBean.digest = map['digest'];
    dyBean.typeid = map['typeid'];
    dyBean.addata = map['addata'];
    dyBean.tag = map['tag'];
    dyBean.category = map['category'];
    dyBean.ptime = map['ptime'];
    return dyBean;
  }

  Map toJson() => {
        "liveInfo": liveInfo,
        "tcount": tcount,
        "picInfo": picInfo,
        "docid": docid,
        "videoInfo": videoInfo,
        "channel": channel,
        "link": link,
        "source": source,
        "title": title,
        "type": type,
        "imgsrcFrom": imgsrcFrom,
        "imgsrc3gtype": imgsrc3gtype,
        "unlikeReason": unlikeReason,
        "isTop": isTop,
        "digest": digest,
        "typeid": typeid,
        "addata": addata,
        "tag": tag,
        "category": category,
        "ptime": ptime,
      };
}

class SportsBean {
  dynamic liveInfo;
  int tcount;
  List<PicInfoBean> picInfo;
  String docid;
  dynamic videoInfo;
  String channel;
  String link;
  String source;
  String title;
  String type;
  dynamic imgsrcFrom;
  int imgsrc3gtype;
  String unlikeReason;
  dynamic isTop;
  String digest;
  String typeid;
  dynamic addata;
  String tag;
  String category;
  String ptime;

  static SportsBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    SportsBean sportsBean = SportsBean();
    sportsBean.liveInfo = map['liveInfo'];
    sportsBean.tcount = map['tcount'];
    sportsBean.picInfo = List()..addAll((map['picInfo'] as List ?? []).map((o) => PicInfoBean.fromMap(o)));
    sportsBean.docid = map['docid'];
    sportsBean.videoInfo = map['videoInfo'];
    sportsBean.channel = map['channel'];
    sportsBean.link = map['link'];
    sportsBean.source = map['source'];
    sportsBean.title = map['title'];
    sportsBean.type = map['type'];
    sportsBean.imgsrcFrom = map['imgsrcFrom'];
    sportsBean.imgsrc3gtype = map['imgsrc3gtype'];
    sportsBean.unlikeReason = map['unlikeReason'];
    sportsBean.isTop = map['isTop'];
    sportsBean.digest = map['digest'];
    sportsBean.typeid = map['typeid'];
    sportsBean.addata = map['addata'];
    sportsBean.tag = map['tag'];
    sportsBean.category = map['category'];
    sportsBean.ptime = map['ptime'];
    return sportsBean;
  }

  Map toJson() => {
        "liveInfo": liveInfo,
        "tcount": tcount,
        "picInfo": picInfo,
        "docid": docid,
        "videoInfo": videoInfo,
        "channel": channel,
        "link": link,
        "source": source,
        "title": title,
        "type": type,
        "imgsrcFrom": imgsrcFrom,
        "imgsrc3gtype": imgsrc3gtype,
        "unlikeReason": unlikeReason,
        "isTop": isTop,
        "digest": digest,
        "typeid": typeid,
        "addata": addata,
        "tag": tag,
        "category": category,
        "ptime": ptime,
      };
}

class MoneyBean {
  dynamic liveInfo;
  int tcount;
  List<PicInfoBean> picInfo;
  String docid;
  dynamic videoInfo;
  String channel;
  String link;
  String source;
  String title;
  String type;
  dynamic imgsrcFrom;
  int imgsrc3gtype;
  String unlikeReason;
  dynamic isTop;
  String digest;
  String typeid;
  dynamic addata;
  String tag;
  String category;
  String ptime;

  static MoneyBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    MoneyBean moneyBean = MoneyBean();
    moneyBean.liveInfo = map['liveInfo'];
    moneyBean.tcount = map['tcount'];
    moneyBean.picInfo = List()..addAll((map['picInfo'] as List ?? []).map((o) => PicInfoBean.fromMap(o)));
    moneyBean.docid = map['docid'];
    moneyBean.videoInfo = map['videoInfo'];
    moneyBean.channel = map['channel'];
    moneyBean.link = map['link'];
    moneyBean.source = map['source'];
    moneyBean.title = map['title'];
    moneyBean.type = map['type'];
    moneyBean.imgsrcFrom = map['imgsrcFrom'];
    moneyBean.imgsrc3gtype = map['imgsrc3gtype'];
    moneyBean.unlikeReason = map['unlikeReason'];
    moneyBean.isTop = map['isTop'];
    moneyBean.digest = map['digest'];
    moneyBean.typeid = map['typeid'];
    moneyBean.addata = map['addata'];
    moneyBean.tag = map['tag'];
    moneyBean.category = map['category'];
    moneyBean.ptime = map['ptime'];
    return moneyBean;
  }

  Map toJson() => {
        "liveInfo": liveInfo,
        "tcount": tcount,
        "picInfo": picInfo,
        "docid": docid,
        "videoInfo": videoInfo,
        "channel": channel,
        "link": link,
        "source": source,
        "title": title,
        "type": type,
        "imgsrcFrom": imgsrcFrom,
        "imgsrc3gtype": imgsrc3gtype,
        "unlikeReason": unlikeReason,
        "isTop": isTop,
        "digest": digest,
        "typeid": typeid,
        "addata": addata,
        "tag": tag,
        "category": category,
        "ptime": ptime,
      };
}

class AutoBean {
  dynamic liveInfo;
  int tcount;
  List<PicInfoBean> picInfo;
  String docid;
  dynamic videoInfo;
  String channel;
  String link;
  String source;
  String title;
  String type;
  dynamic imgsrcFrom;
  int imgsrc3gtype;
  String unlikeReason;
  dynamic isTop;
  String digest;
  String typeid;
  dynamic addata;
  String tag;
  String category;
  String ptime;

  static AutoBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    AutoBean autoBean = AutoBean();
    autoBean.liveInfo = map['liveInfo'];
    autoBean.tcount = map['tcount'];
    autoBean.picInfo = List()..addAll((map['picInfo'] as List ?? []).map((o) => PicInfoBean.fromMap(o)));
    autoBean.docid = map['docid'];
    autoBean.videoInfo = map['videoInfo'];
    autoBean.channel = map['channel'];
    autoBean.link = map['link'];
    autoBean.source = map['source'];
    autoBean.title = map['title'];
    autoBean.type = map['type'];
    autoBean.imgsrcFrom = map['imgsrcFrom'];
    autoBean.imgsrc3gtype = map['imgsrc3gtype'];
    autoBean.unlikeReason = map['unlikeReason'];
    autoBean.isTop = map['isTop'];
    autoBean.digest = map['digest'];
    autoBean.typeid = map['typeid'];
    autoBean.addata = map['addata'];
    autoBean.tag = map['tag'];
    autoBean.category = map['category'];
    autoBean.ptime = map['ptime'];
    return autoBean;
  }

  Map toJson() => {
        "liveInfo": liveInfo,
        "tcount": tcount,
        "picInfo": picInfo,
        "docid": docid,
        "videoInfo": videoInfo,
        "channel": channel,
        "link": link,
        "source": source,
        "title": title,
        "type": type,
        "imgsrcFrom": imgsrcFrom,
        "imgsrc3gtype": imgsrc3gtype,
        "unlikeReason": unlikeReason,
        "isTop": isTop,
        "digest": digest,
        "typeid": typeid,
        "addata": addata,
        "tag": tag,
        "category": category,
        "ptime": ptime,
      };
}

class TechBean {
  dynamic liveInfo;
  int tcount;
  List<PicInfoBean> picInfo;
  String docid;
  dynamic videoInfo;
  String channel;
  String link;
  String source;
  String title;
  String type;
  dynamic imgsrcFrom;
  int imgsrc3gtype;
  String unlikeReason;
  dynamic isTop;
  String digest;
  String typeid;
  dynamic addata;
  String tag;
  String category;
  String ptime;

  static TechBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    TechBean techBean = TechBean();
    techBean.liveInfo = map['liveInfo'];
    techBean.tcount = map['tcount'];
    techBean.picInfo = List()..addAll((map['picInfo'] as List ?? []).map((o) => PicInfoBean.fromMap(o)));
    techBean.docid = map['docid'];
    techBean.videoInfo = map['videoInfo'];
    techBean.channel = map['channel'];
    techBean.link = map['link'];
    techBean.source = map['source'];
    techBean.title = map['title'];
    techBean.type = map['type'];
    techBean.imgsrcFrom = map['imgsrcFrom'];
    techBean.imgsrc3gtype = map['imgsrc3gtype'];
    techBean.unlikeReason = map['unlikeReason'];
    techBean.isTop = map['isTop'];
    techBean.digest = map['digest'];
    techBean.typeid = map['typeid'];
    techBean.addata = map['addata'];
    techBean.tag = map['tag'];
    techBean.category = map['category'];
    techBean.ptime = map['ptime'];
    return techBean;
  }

  Map toJson() => {
        "liveInfo": liveInfo,
        "tcount": tcount,
        "picInfo": picInfo,
        "docid": docid,
        "videoInfo": videoInfo,
        "channel": channel,
        "link": link,
        "source": source,
        "title": title,
        "type": type,
        "imgsrcFrom": imgsrcFrom,
        "imgsrc3gtype": imgsrc3gtype,
        "unlikeReason": unlikeReason,
        "isTop": isTop,
        "digest": digest,
        "typeid": typeid,
        "addata": addata,
        "tag": tag,
        "category": category,
        "ptime": ptime,
      };
}
