import 'dart:convert';

import 'package:coke/bean/News.dart';
import 'package:coke/http/HttpUtil.dart';
import 'package:coke/http/api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewsPage();
  }
}


class _NewsPage extends State<NewsPage> {

  News news;
  List tabs = new List<Tab>();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return _buildTabController();
  }

  Widget _buildTabController() {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        // 如果不用PreferredSize和SafeArea会出现系统状态栏遮挡TabBar
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
          child: SafeArea(
            top: true,
            child: TabBar(
              isScrollable: true,
              tabs: tabs,
              controller: _tabController,
              indicatorColor: Color(0xffff0000),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Color(0xffff0000),
              labelStyle: TextStyle(
                fontSize: 15.0,
              ),
              unselectedLabelColor: Color(0xff000000),
              unselectedLabelStyle: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [

          ],
        ),
      ),
    );
  }

  _loadData() async {
    Response response = await HttpUtil.getInstance().get(API.NEWS);
    setState(() {
      news = News.fromMap(json.decode(response.data));
    });
  }

}