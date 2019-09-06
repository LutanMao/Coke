import 'dart:convert';

import 'package:chewie/chewie.dart';
import 'package:coke/bean/Recomm.dart';
import 'package:coke/http/HttpUtil.dart';
import 'package:coke/http/api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class RecommListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListContainer();
  }
}

class _ListContainer extends State<RecommListPage> {
  Recomm recomm;
  int page = 0;

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: ListView.builder(
        itemBuilder: (context, position) {
          if (recomm.data[position] == null) {
            //显示加载更多
            return Container(
                alignment: Alignment.center,
                height: 40,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ));
          } else {
            return _buildRecommItem(recomm.data[position]);
          }
        },
        itemCount: _itemCount(),
      ),
      onRefresh: _loadData,
    );
  }

  Future<void> _loadData() async {
    Response response = await HttpUtil.getInstance().get(API.RECOMM_LIST, data: {"type": 1, "page": page});
    setState(() {
      print("Recomm List Data = ${response.data.toString()}");
      recomm = Recomm.fromMap(json.decode(response.data));
    });
  }

  int _itemCount() {
    if (recomm == null || recomm.data == null) {
      return 0;
    } else {
      return recomm.data.length;
    }
  }

  Widget _buildRecommItem(DataBean dataBean) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color(0xffd0d0d0),
            blurRadius: 5.0,
          ),
        ],
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.network(dataBean.profileImage, width: 30, height: 30),
              SizedBox(width: 10),
              Text(dataBean.name),
            ],
          ),
          _buildItemContainer(dataBean),
        ],
      ),
    );
  }

  Widget _buildItemContainer(DataBean dataBean) {
    switch (dataBean.type) {
      case "10": // 图片
        return Container(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Text(
                  dataBean.text,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10),
              Image.network(dataBean.image0),
            ],
          ),
        );
      case "41": // 视频
        return Container(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Text(
                  dataBean.text,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10),
              Chewie(
                controller: _createVideoController(dataBean),
              ),
            ],
          ),
        );
      default:
        return null;
    }
  }

  ChewieController _createVideoController(DataBean dataBean) {
    return ChewieController(
      videoPlayerController: VideoPlayerController.network(dataBean.videouri),
      aspectRatio: 3 / 2,
      autoPlay: false,
      looping: false,
      autoInitialize: false,
    );
  }
}
