import 'package:art_exhibition_app/utils/TextFields.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
