// ignore_for_file: deprecated_member_use, unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:login_page/screen/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Team 467 Scouting App';
    // ignore: dead_code
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
        
        //theme: ThemeData(
          //primarySwatch: Colors.blue,
        //),  
      )
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.numbers),
              labelText: 'Team Number',
              hintText: '467',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter the team number';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.numbers),
              labelText: 'Match Number',
              hintText: '2',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter a match number';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.calendar_today),
              labelText: 'Did the team exit the taxi',
              hintText: 'Write 2 for Yes; 0 for No',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please indicate whether or not the team exited the taxi';
              }
              return null;
            },
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Submit'),
                onPressed: () {
                  // It returns true if the form is valid, otherwise returns false
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context).showSnackBar(SnackBar(
                        content:
                            Text('Thank You. The data has been submitted')));
                  }
                },
              )),
        ],
      ),
    );
  }
}
