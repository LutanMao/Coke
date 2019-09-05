import 'dart:convert';

import 'package:coke/bean/Recomm.dart';
import 'package:coke/http/HttpUtil.dart';
import 'package:coke/http/api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            return Text(recomm.data[position].text);
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
}
