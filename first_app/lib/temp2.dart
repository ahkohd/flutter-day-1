import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget textSection = Container(
      color: Colors.black,
      padding: EdgeInsets.fromLTRB(32, 10, 32, 10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: Color.fromARGB(50, 255, 255, 255)),
                left: BorderSide(color: Color.fromARGB(50, 255, 255, 255)),
                right: BorderSide(color: Color.fromARGB(50, 255, 255, 255)),
                bottom: BorderSide(color: Color.fromARGB(50, 255, 255, 255)))),
        child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
              'Alps. Situated 1,578 meters above sea level, it is one of the '
              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through pastures and pine forest, leads you to the '
              'lake, which warms to 20 degrees Celsius in the summer. Activities '
              'enjoyed here include rowing, and riding the summer toboggan run.',
          style: TextStyle(color: Colors.white70),
          softWrap: true,
        ),
      ),
    );

    Widget textHeader = Padding(
      padding: EdgeInsets.fromLTRB(32, 30, 0, 0),
      child: Text(
        'Victor Aremu',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 25, color: Colors.amber),
      ),
    );

    Widget imageContainer = Container(
      child: Center(
        child: Material(
          elevation: 0,
          color: Colors.transparent,
          child: Container(
            width: 140,
            height: 140,
            margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: CircleAvatar(
                radius: 20, backgroundImage: AssetImage('images/ahkohd.jpg')),
          ),
        ),
      ),
    );

    return MaterialApp(
        title: 'Flutter App',
        home: Scaffold(
            appBar: AppBar(
              // elevation: 0,
              leading: BackButton(
                color: Colors.black,
              ),
              actions: <Widget>[
                IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  icon: Icon(Icons.star),
                ),
                IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  icon: Icon(Icons.bookmark),
                )
              ],
              backgroundColor: Colors.amber,
              centerTitle: true,
              title: Text(
                'PROFILE',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
            backgroundColor: Colors.black,
            body: ListView(
              children: <Widget>[imageContainer, textHeader, textSection],
            )));
  }
}

