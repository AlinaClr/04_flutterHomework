import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            flex: 1, child: IconContainer(Icons.search, color: Colors.blue)),
        Expanded(
          flex: 2,
          child: IconContainer(Icons.home, color: Colors.orange),
        ),
        Expanded(
          flex: 1,
          child: IconContainer(Icons.select_all, color: Colors.red),
        ),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  //定义属性的时候在类型后面加一个？ 表示把当前属性定义成可空类型属性
  Color? color = Colors.red;
  double? size = 32.0;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child:
          Center(child: Icon(this.icon, size: this.size, color: Colors.white)),
    );
  }
}
