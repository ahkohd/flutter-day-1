import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget _itemCard(BuildContext context, String label, double count,
      IconData icon, double length) {
    return Container(
      child: Container(
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              // color: Color(0xff111111),
              color: Color.fromRGBO(0, 0, 0, .2),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, .4),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, 0))
              ]),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Row(
            children: <Widget>[
              Container(
                child: Icon(icon, size: 40, color: Color.fromRGBO(255, 215, 35, .9)),
                padding: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1, color: Color(0xff000000)))),
              ),
              Container(
                  padding: EdgeInsets.only(left: 15),
                  width: 210,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child: Text(
                            label,
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                                // fontWeight: FontWeight.w400
                                fontWeight: FontWeight.w300
                                ),
                          )),
                          Container(
                              child: Row(
                            children: <Widget>[
                              Container(
                                width: length,
                                height: 5,
                                margin: EdgeInsets.only(top: 7),
                                decoration: BoxDecoration(
                                    // color: Colors.amberAccent,
                                    color: Color.fromRGBO(255, 215, 25, .9),
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(4))),
                              ),
                              Container(
                                width: (100 - length),
                                height: 5,
                                margin: EdgeInsets.only(top: 7),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.horizontal(
                                        right: Radius.circular(4)),
                                    // color: Color(0xff2222222)),
                                    color: Color.fromRGBO(255, 255, 255, .1)),

                              ),
                            ],
                          ))
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(count.toString(),
                            style: TextStyle(
                              // color: Colors.amber,
                              fontWeight: FontWeight.w200,
                              color: Color.fromRGBO(255, 255, 255, .6),
                              fontSize: 36,
                            )),
                      )
                    ],
                  ))
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget textSection = Container(
      color: Colors.transparent,
      padding: EdgeInsets.fromLTRB(32, 32, 32, 0),
      child: Column(
        children: <Widget>[
          _itemCard(context, 'Ranking', 4.5, Icons.star_border, 80),
          _itemCard(context, 'Coverage', 3.2, Icons.track_changes, 45),
          _itemCard(context, 'Response', 4.8, Icons.chat_bubble_outline, 80)
        ],
      ),
    );

    Widget textHeader = Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Text(
        'Victor Aremu',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 23,
            color: Color.fromRGBO(255, 255, 255, .95)),
      ),
    );

    Widget imageContainer = Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.only(bottom: 25),
      child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Color.fromRGBO(0, 0, 0, .3),
                        offset: Offset(0, 5),
                        spreadRadius: 5)
                  ],
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      image: AssetImage('images/ahkohd.jpg'),
                      fit: BoxFit.cover)),
            ),
            textHeader,
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 8, 3),
              child: Text('@Ahkohd',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
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
                  child: Icon(Icons.star, color: Colors.yellowAccent, size: 14),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                  margin: EdgeInsets.only(left: 3),
                  decoration: BoxDecoration(
                      color: Color(0xff8BC34A),
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

    Widget appBar = Container(
      height: 52,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 42),
            child: BackButton(
            color: Color.fromRGBO(255, 255, 255, .9),
          ),
          ),
          Container(
              child: Text(
            'Victor Aremu',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, .8),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          )),
          Container(
            width: 96,
            child: Row(
            children: <Widget>[
              IconButton(
            onPressed: () {},
            color: Color.fromRGBO(255, 255, 255, .8),
            icon: Icon(Icons.star_border),
          ),
          IconButton(
            onPressed: () {},
            color: Color.fromRGBO(255, 255, 255, .8),
            icon: Icon(Icons.bookmark_border),
          )
            ],
          ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0),
        border: Border(
          bottom: BorderSide(
            width: .5,
            color: Color.fromRGBO(255, 255, 255, .1)
          )
        )
        ),
    );
    return MaterialApp(
        title: 'Flutter App',
        home: Scaffold(
            body: new Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/lake.jpg'), fit: BoxFit.cover)),
          child: new BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: new Container(
              decoration:
                  new BoxDecoration(color: Colors.white.withOpacity(0.0)),
              child: Container(
                color: Color.fromRGBO(0, 0, 0, .6),
                child: ListView(children: <Widget>[
                  appBar,
                  imageContainer,
                  Center(
                    child: SizedBox(
                      width: 150,
                      child: Divider(
                        color: Color.fromRGBO(255, 255, 255, .1),
                        height: 1,
                        indent: 0,
                      ),
                    ),
                  ),
                  textSection
                ]),
                // child: ,
              ),
            ),
          ),
        )));
  }
}
