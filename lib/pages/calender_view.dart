import 'package:flutter/material.dart';
import 'package:calender_app/pages/calender.dart';

class CalenderView extends StatefulWidget {
  @override
  _CalenderViewState createState() => _CalenderViewState();
}

class _CalenderViewState extends State<CalenderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(child: Icon(Icons.arrow_back_ios),
          onTap: (){
          Navigator.pop(context);
          },
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top:19.0,right:4),
            child: Text("Calender",style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_drop_down),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Calender(),
      ),
    );
  }
}
