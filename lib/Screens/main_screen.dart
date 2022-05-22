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
                            "Let's get you set up",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),

                        SizedBox(height:5.0,),

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

    // ignore: dead_code
    Container(
      padding: EdgeInsets.only(top: 15.0, right: 70.0, left: 70.0, bottom: 10.0),
      child: Column(
        children: <Widget> [
            Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.lightBlue, fontWeight: FontWeight.w600, fontSize: 35.0, fontFamily: "Merriweather"),
              ),
              const SizedBox (height: 21.0),
            
          InputField(
            label: "Team Number"
            content: "467"
          ),

          SizedBox(height: 20.0),

          
        ],
      )
    );
  }
}