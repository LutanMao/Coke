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
      ..add(Tab(text: "新闻"))
      ..add(Tab(text: "新闻"))
      ..add(Tab(text: "新闻"))
      ..add(Tab(text: "新闻"))
      ..add(Tab(text: "新闻"))
      ..add(Tab(text: "新闻"))
      ..add(Tab(text: "新闻"))
      ..add(Tab(text: "新闻"));
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
        appBar: AppBar(
          title: SizedBox(),
          bottom: TabBar(
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
//        body: TabBarView(
//          controller: _tabController,
//          children: [
//            Text("1111"),
//            Text("2222"),
//          ],
//        ),
      ),
    );
  }
}
