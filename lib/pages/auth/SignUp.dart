import 'package:art_exhibition_app/pages/startScreen/util/routeButtons.dart';
import 'package:art_exhibition_app/utils/Todo.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

@Todo("authotencation will be codded.")
@Todo("i've better to code back end as quickly as possible")
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
            routeButtons(name: 'Sign Up', ctx: context, route: "home"),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
