import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // void getData() async {
  //   Response response =
  //       await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  // print(response.body);

  // print(response.body[userId]);
  // not work because ye map h he na object balky ye json string he

  // Map data = jsonDecode(response.body);
  // print(data);
  // print(data['title']);
  // }

  void getTime() async {
    Response response = await get(
        Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Karachi'));
    Map data = jsonDecode(response.body);
    //obj me get time utc
    String datetime = data['datetime'];
    String offset = data['utc_offset'];
    print(datetime);
    print(offset);

    DateTime now = DateTime.parse(datetime);
    now.add(
      Duration(
          hours: int.parse(
        offset,
      )),
    );
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(' lOADING PAGE Location is near oRIO'),
      ),
    );
  }
}
