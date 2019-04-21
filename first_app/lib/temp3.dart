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
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Text(
        'Victor Aremu',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 23, color: Colors.amber),
      ),
    );

    Widget imageContainer = Container(
      padding: EdgeInsets.only(bottom: 20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color.fromARGB(15, 255, 255, 255)
            )
        )
      ),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 25),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                border:
                    Border.all(color: Color.fromARGB(100, 0, 0, 0), width: 6),
                shape: BoxShape.circle,
                image: new DecorationImage(
                    image: AssetImage('images/ahkohd.jpg'), fit: BoxFit.cover)),
          ),
          textHeader,
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 8, 3),
            child: Text('@Ahkohd',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                    fontWeight: FontWeight.normal)),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.place, color: Colors.white54, size: 14),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text('Lagos, Nigeria',
                          style:
                              TextStyle(color: Colors.white70, fontSize: 12)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3),
                child: Icon(Icons.star, color: Colors.white70, size: 14),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                margin: EdgeInsets.only(left: 3),
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(2)),
                child: Text('PRO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ])),
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
                  icon: Icon(Icons.star_border),
                ),
                IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  icon: Icon(Icons.bookmark_border),
                )
              ],
              backgroundColor: Colors.amber,
              centerTitle: true,
              title: Text(
                'Victor Aremu',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
            backgroundColor: Colors.black38,
            body: Column(
              children: <Widget>[imageContainer, textSection],
            )));
  }
}
