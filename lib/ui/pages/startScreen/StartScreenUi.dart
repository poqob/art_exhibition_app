import 'package:art_exhibition_app/ui/pages/startScreen/routeSection.dart';
import 'package:art_exhibition_app/ui/pages/startScreen/appbar/appbar.dart';
import 'package:art_exhibition_app/ui/pages/startScreen/util/gettingStartedButton.dart';

import 'package:flutter/material.dart';
import '../../../../utils/Todo.dart';

@Todo('''
random table-statue provider will be coded like api.
Work types:
  1-The art work will be changed in some seconds with soft animation.
  2-Will us provide art works from db??? how it is possible ??
''')
class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: gettingStartedButton(
                ctx: context,
                controller: controller,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            //@TODO: we will add details about app here.
            //@TODO: flutter paint class should be searched, may i can draw some shapes borders and fills them in.
            child: SizedBox(
              child: Text("data"),
              height: 550,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 150,
            ),
          ),
          const RouteSection(),
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
