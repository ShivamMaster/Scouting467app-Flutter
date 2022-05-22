import 'package:flutter/material.dart';


class MyCustomForm extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: EdgeInsets.only(top: 60.0, bottom: 60.0, left: 120.0, right:120.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 5.0,
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width /3.3,
                  height: MediaQuery.of(context).size.height,
                  //color: Color.lightBlue[600],
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: <Widget> [
                        SizedBox(height: 60.0,),

                        Container(
                          padding: EdgeInsets.only(
                            top: 5.0,
                            bottom: 5.0
                          ),

                          child: Text(
                            "This is a text. Please WORK"
                          )
                        )
                      ]
                    )
                  )
                )
              ]
            )
          )
        )
      )
    );
  }
}