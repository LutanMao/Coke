import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> with SingleTickerProviderStateMixin {
  List tabs = new List<Tab>();
  TabController _tabController;

  @override
  void initState() {
    tabs
      ..add(Tab(text: "推荐"))
      ..add(Tab(text: "新闻"))
      ..add(Tab(text: "视频"))
      ..add(Tab(text: "音乐"))
      ..add(Tab(text: "小说"))
      ..add(Tab(text: "诗词"))
      ..add(Tab(text: "美图"));
    _tabController = TabController(initialIndex: 1, length: tabs.length, vsync: this);
    super.initState();
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
            Text("1111"),
            Text("2222"),
            Text("2222"),
            Text("2222"),
            Text("2222"),
            Text("2222"),
            Text("2222"),
          ],
        ),
      ),
    );
  }
}
