import 'package:flutter/material.dart';
class onePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // Flutter
      Stack(
        alignment: const Alignment(0.6, 0.6),
        children: <Widget>[
          CircleAvatar(
      backgroundColor:Colors.blue,
            backgroundImage: NetworkImage(
                'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2451830344,737847727&fm=26&gp=0.jpg'),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white10,
            ),
            child: Text('Flutter'),
          ),
        ],
      );
  }
}