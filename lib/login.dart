import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class LoginPage extends StatefulWidget {
//  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//发起http请求
  void getHttp() async {
    try {
      Response response = await Dio().get("https://www.baidu.com");
      gotoView();
    } catch (e) {
      print(e);
    }
  }

  void gotoView() {
    print('gotoView');

    Navigator.of(context)
        .push(new MaterialPageRoute<void>(builder: (BuildContext context) {
      return Browser(url:'https://www.baidu.com',title:'这是一个H5');
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登陆'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 300,
              maxHeight: 300,
            ),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: '用户名'),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: '密码'),
                    ),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          color: Colors.black12,
                          child: Text('注册'),
                        ),
                        FlatButton(
                          onPressed: () {
                            getHttp();
                          },
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text('登陆'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Browser extends StatelessWidget {
  const Browser({Key key, this.url, this.title}) : super(key: key);
  final String url;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:Center(
         child: Text(url)
      )
    );
  }
}
