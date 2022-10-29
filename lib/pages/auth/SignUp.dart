import 'package:art_exhibition_app/pages/startScreen/util/textFields.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_wnpcfdk3.json'),
            const TextInput(hintTextt: 'user name', suffixTextt: 'welcome'),
            const TextInput(
              hintTextt: 'password',
              isObsecure: true,
            ),
          ],
        ),
      ),
    );
  }
}
