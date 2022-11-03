import 'package:art_exhibition_app/pages/startScreen/util/textFields.dart';
import 'package:art_exhibition_app/utils/db_methods.dart';
import 'package:flutter/material.dart';

// Define a custom Form widget.
class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  LogInFormState createState() {
    return LogInFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class LogInFormState extends State<LogInForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  TextEditingController _textEditingControllerUserName =
      TextEditingController();
  TextEditingController _textEditingControllerPassword =
      TextEditingController();
  DbMethods db = DbMethods();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextInput(
              textInputType: TextInputType.name,
              formKey: _formKey,
              hintTextt: "username",
              textEditingController: _textEditingControllerUserName),
          TextInput(
            textInputType: TextInputType.text,
            formKey: _formKey,
            hintTextt: "password",
            isObsecure: true,
            textEditingController: _textEditingControllerPassword,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              side: const BorderSide(
                style: BorderStyle.solid,
                width: 1.6,
                color: Colors.white,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "submit",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 22),
              ),
            ),
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world,

                try {
                  if (_textEditingControllerUserName.text ==
                          await db.loginAuthUserName(
                              _textEditingControllerUserName.text) &&
                      _textEditingControllerPassword.text ==
                          await db.loginAuthPassword(
                              _textEditingControllerPassword.text)) {
                    Future<void>.delayed(
                      const Duration(seconds: 1),
                      () => Navigator.popAndPushNamed(context, 'home'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Logged in kral')),
                    );
                  }
                } catch (e) {}
                // you'd often call a server or save the information in a database.
              }
            },
          )
        ],
      ),
    );
  }
}
