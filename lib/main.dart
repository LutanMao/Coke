import 'package:coke/home/home.dart';
import 'package:coke/lifetools/life_tools.dart';
import 'package:coke/me/me.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'news/NewsPage.dart';

void main() async => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp() {}

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State {
  var _currentIndex = 0;
  List<Widget> _widgets = new List();

  @override
  void initState() {
    _widgets..add(HomePage())..add(NewsPage())..add(LifeToolsPage())..add(MePage());
//    _requestPermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coke",
      theme: new ThemeData(
          backgroundColor: Color(0xffffffff), textTheme: TextTheme(body1: TextStyle(color: Color(0xff333333)))),
      home: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _widgets,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), title: Text("新闻")),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("生活")),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("我")),
          ],
          currentIndex: _currentIndex,
          onTap: _navSelected,
          selectedItemColor: Color(0xffff0000),
          unselectedItemColor: Color(0xFFCCCCCC),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void _navSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _requestPermission() async {
    Map<PermissionGroup, PermissionStatus> permissions =
        await PermissionHandler().requestPermissions([PermissionGroup.location, PermissionGroup.camera]);
    //校验权限
    if (permissions[PermissionGroup.camera] != PermissionStatus.granted) {
      print("无照相权限");
    }
    if (permissions[PermissionGroup.location] != PermissionStatus.granted) {
      print("无定位权限");
    }
  }
}
