import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class chooseLocation extends StatefulWidget {
  const chooseLocation({Key? key}) : super(key: key);
  @override
  State<chooseLocation> createState() => _chooseLocationState();
}

class _chooseLocationState extends State<chooseLocation> {
  int counter = 0;

  // void getData() async {
  //   String username = await Future.delayed(
  //     Duration(seconds: 2),
  //     () {
  //       return 'urooj';
  //     },
  //   );
  //   String bio = await Future.delayed(
  //     Duration(seconds: 1),
  //     () {
  //       return 'BSSE';
  //     },
  //   );
  //   print('$username - $bio');
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  //   print('hey there!');
  // }

  @override
  Widget build(BuildContext context) {
    print('build fnction run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
