import 'package:flutter/cupertino.dart';

class MePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MePage();
  }
}

class _MePage extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Me"),
      alignment: Alignment.center,
    );
  }
}
