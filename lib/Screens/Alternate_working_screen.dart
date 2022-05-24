// import 'package:explore/widgets/bottom_bar.dart';
// import 'package:explore/widgets/carousel.dart';
// import 'package:explore/widgets/destination_heading.dart';
// import 'package:explore/widgets/explore_drawer.dart';
// import 'package:explore/widgets/featured_heading.dart';
// import 'package:explore/widgets/featured_tiles.dart';
// import 'package:explore/widgets/floating_quick_access_bar.dart';
// import 'package:explore/widgets/responsive.dart';
// import 'package:explore/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';

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
              icon: const Icon(Icons.numbers),
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


