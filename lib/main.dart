import 'package:coke/home/home.dart';
import 'package:coke/lifetools/life_tools.dart';
import 'package:coke/me/me.dart';
import 'package:flutter/material.dart';

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
    _widgets..add(HomePage())..add(LifeToolsPage())..add(MePage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coke",
      theme:  new ThemeData(
          backgroundColor: Color(0xffffffff),
          textTheme: TextTheme(
              body1: TextStyle(color: Color(0xff333333))
          )
      ),
      home: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _widgets,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("工具")),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("我")),
          ],
          currentIndex: _currentIndex,
          onTap: _navSelected,
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
}
