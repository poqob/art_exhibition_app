import 'package:art_exhibition_app/ui/pages/auth/signUp/sign_up_form.dart';
import 'package:art_exhibition_app/ui/utils/Todo.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

@Todo("scaffold will be colored.")
@Todo("db queries will getting better.")
@Todo(
    "progres indicator bar will be added or some soft loading animations like youtube's.")
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_outlined),
              onPressed: (() => Navigator.pop(context)))),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              "https://assets6.lottiefiles.com/packages/lf20_1t8na1gy.json",
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: SignUpForm(),
            ),
          ],
        ),
      ),
    );
  }
}
