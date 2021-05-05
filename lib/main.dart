import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Registration Form';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
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

// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your First name',
                    labelText: 'First Name',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your Last name',
                    labelText: 'Last Name',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter a phone number',
                    labelText: 'Phone',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your date of birth',
                    labelText: 'Dob',
                  ),
                ),
                DropDownFormField(
                  titleText: 'Gender',
                  hintText: 'Please choose one',
                  dataSource: [
                    {
                      "display": "Male",
                      "value": "male",
                    },
                    {
                      "display": "Female",
                      "value": "female",
                    },
                    {
                      "display": "Other",
                      "value": "other",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your Email',
                    labelText: 'Email',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your Aadhar Number',
                    labelText: 'Aadhar number',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your City',
                    labelText: 'City',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your Pin',
                    labelText: 'Pin',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 135.0, top: 30.0),
                  child: RaisedButton(
                    onPressed: () => null,
                    child: Text('Register'),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
