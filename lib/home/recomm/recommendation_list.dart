import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListContainer();
  }
}

class _ListContainer extends State<RecommListPage> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: ListView.builder(
        itemBuilder: null,
        itemCount: 0,
      ),
      onRefresh: null,
    );
  }

  void _loadData() {

  }

}
