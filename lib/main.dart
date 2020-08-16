import 'package:flutter/material.dart';
import 'package:flutter_app/SplashActivity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('主页'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RowLayout(),
          RouterLayout(),
//          ColumnLayout(),

          Text(
            'You have pushed the12222121wwqqwwq',
            style: TextStyle(
              backgroundColor: Colors.red,
            ),
          ),
          Text('nmsad asd '),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}



class RouterLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        RaisedButton(
          onPressed: (){
            Navigator.push(context,
                new MaterialPageRoute(builder:(context){
                 return new SplashPage();
                } )
            );
          },
          child: new Text('欢迎页'),
          textColor: Colors.white,
          color: Colors.blue,
        )

      ],
    );
  }

}

class ColumnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:<Widget> [
          Expanded(
            flex: 1,
            child: RaisedButton(
              onPressed: () {},
              child: Text("8211"),
              textColor: Colors.white,
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}

class RowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: RaisedButton(
            onPressed: () {},
            child: Text("8211"),
            textColor: Colors.white,
            color: Colors.pink,
          ),
        ),
        Expanded(
          flex: 2,
          child: RaisedButton(
            onPressed: () {},
            child: Text("111"),
            textColor: Colors.white,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
