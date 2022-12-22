import 'package:art_exhibition_app/ui/pages/auth/components/textFields.dart';
import '../../../../utils/Todo.dart';
import 'package:art_exhibition_app/db/db_commands/db_methods.dart';
import 'package:flutter/material.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  LogInFormState createState() {
    return LogInFormState();
  }
}

class LogInFormState extends State<LogInForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _textEditingControllerUserName =
      TextEditingController();
  final TextEditingController _textEditingControllerPassword =
      TextEditingController();
  DBActions db = DBActions();
  @Todo("i'll coloring scaffold message.")
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          //text inputs
          TextInput(
              textInputType: TextInputType.name,
              formKey: _formKey,
              hintTextt: "username",
              maxLength: 15,
              textEditingController: _textEditingControllerUserName),
          TextInput(
            textInputType: TextInputType.visiblePassword,
            formKey: _formKey,
            hintTextt: "password",
            isObsecure: true,
            maxLength: 15,
            textEditingController: _textEditingControllerPassword,
          ),
          //submit button.
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
                try {
                  if (_textEditingControllerUserName.text ==
                          await db.loginAuthUserName(
                              _textEditingControllerUserName.text) &&
                      _textEditingControllerPassword.text ==
                          await db.loginAuthPassword(
                              _textEditingControllerPassword.text)) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('succesfully Logged in'),
                        duration: Duration(milliseconds: 500),
                      ),
                    );
                    Future<void>.delayed(
                      const Duration(seconds: 1),
                      () => Navigator.popAndPushNamed(context, 'home'),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Wrong username or password entry')),
                    );
                  }
                  // ignore: empty_catches
                } catch (e) {}
              }
            },
          )
        ],
      ),
    );
  }
}
