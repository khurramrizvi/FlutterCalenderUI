import 'package:flutter/material.dart';
import 'package:calender_app/pages/calender_home.dart';

void main(){
  runApp(CalenderApp());
}

class CalenderApp extends StatefulWidget {
  @override
  _CalenderAppState createState() => _CalenderAppState();
}

class _CalenderAppState extends State<CalenderApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calender App",
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.pinkAccent,
        backgroundColor: Colors.black,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.arrow_back_ios),
          elevation: 0,
          actions: [
            Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu,
                    size: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 6.0,
                  ),
                )
              ],
            ),
          ],
        ),
          body:CalenderHome()
      ),
    );
  }
}


