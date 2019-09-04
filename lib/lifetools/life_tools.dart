import 'package:flutter/cupertino.dart';

class LifeToolsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ToolsPage();
  }
}

class _ToolsPage extends State<LifeToolsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Tools"),
    );
  }
}
