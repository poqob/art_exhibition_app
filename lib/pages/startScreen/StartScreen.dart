import 'package:art_exhibition_app/pages/auth/LogIn.dart';
import 'package:art_exhibition_app/pages/auth/SignUp.dart';
import 'package:art_exhibition_app/pages/startScreen/appbar/appbar.dart';
import 'package:art_exhibition_app/pages/startScreen/util/appBarImageChanger.dart';
import 'package:art_exhibition_app/pages/startScreen/util/buttonO.dart';
import 'package:flutter/material.dart';
import 'package:art_exhibition_app/utils/Todo.dart';

@Todo('''
random table-statue provider will be coded like api.
Work types:
  1-The art work will be changed in some seconds with soft animation.
  2-Will us provide art works from db??? how it is possible ??
''')
class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

@Todo('''login and signup section's position will be stored in a variable.
 login and signup buttons will have got that information for scrolling the page''')
class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        controller: controller,
        slivers: <Widget>[
          const AppbarStartScreen(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LogInB(
                    name: "Log In",
                    ctx: context,
                    tittle: "tittle",
                    controller: controller,
                  ),
                  SignUpB(
                    name: "Sign Up",
                    ctx: context,
                    tittle: "tittle",
                    controller: controller,
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 550,
            ),
          ),
          LogIn(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 150,
            ),
          ),
          SignUp(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
