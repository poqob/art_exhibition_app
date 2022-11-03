import 'package:art_exhibition_app/utils/Todo.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'log_in_form.dart';

@Todo("scaffold will be colored.")
@Todo("db queries will getting better.")
@Todo(
    "progres indicator bar will be added or some soft loading animations like youtube's.")
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: (() => Navigator.pop(context)),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //log in animation.
            Lottie.network(
              "https://assets4.lottiefiles.com/packages/lf20_zjrbckjh.json",
              controller: _controller,
              onLoaded: (composition) {
                _controller
                  ..duration = composition.duration
                  ..forward();
              },
            ),
            //log in form-text fields-submit button
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: LogInForm(),
            ),
          ],
        ),
      ),
    );
  }
}
