import 'package:art_exhibition_app/ui/pages/auth/signUp/widgets/selectAvatarWidget.dart';
import 'package:art_exhibition_app/ui/pages/auth/widgets/textFields.dart';
import '../../../../utils/Todo.dart';
import 'package:art_exhibition_app/db/db_commands/db_methods.dart';
import 'package:flutter/material.dart';

@Todo("i'll coloring scaffold message.")
@Todo("Adresses and age will be added as widget")
class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  SignUpFormState createState() {
    return SignUpFormState();
  }
}

class SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _textEditingControllerUserName =
      TextEditingController();
  final TextEditingController _textEditingControllerPassword =
      TextEditingController();
  final TextEditingController _textEditingControllerEMail =
      TextEditingController();
  final TextEditingController _textEditingControllerReTypePassword =
      TextEditingController();

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
              suffixTextt: "username",
              maxLength: 15,
              textEditingController: _textEditingControllerUserName),

          TextInput(
            textInputType: TextInputType.visiblePassword,
            formKey: _formKey,
            hintTextt: "password",
            suffixTextt: "password",
            maxLength: 15,
            isObsecure: true,
            textEditingController: _textEditingControllerPassword,
          ),
          TextInput(
            textInputType: TextInputType.visiblePassword,
            formKey: _formKey,
            hintTextt: "re-type password",
            suffixTextt: "password",
            isObsecure: true,
            maxLength: 15,
            textEditingController: _textEditingControllerReTypePassword,
          ),

          const SelectAvatarRow(),
          //SignUp button.
          Padding(
            padding: const EdgeInsets.fromLTRB(1, 20, 1, 1),
            child: OutlinedButton(
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
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 22),
                ),
              ),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {}
              },
            ),
          )
        ],
      ),
    );
  }
}
