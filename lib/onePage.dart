import 'package:flutter/material.dart';
class onePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // Flutter
      Scaffold(
          appBar:AppBar(title: Text('圆'),),
        body: Center(
          child: Stack(
            alignment: const Alignment(0.3, 0.6),
            children: <Widget>[
              SizedBox(
                width: 300,
                height: 300,
                child: CircleAvatar(
                  backgroundColor:Colors.blue,
                  backgroundImage: NetworkImage(
                      'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2451830344,737847727&fm=26&gp=0.jpg'),
                ),
              ),
              Container(
//                width: 90,
//                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white10,
                ),
                child: Text('Flutter',style: TextStyle(fontSize:30),),
              ),
            ],
          ),
        ),
      );
  }
}