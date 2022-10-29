import 'package:art_exhibition_app/pages/auth/logIn.dart';
import 'package:art_exhibition_app/pages/auth/signup.dart';
import 'package:art_exhibition_app/pages/startScreen/util/buttonO.dart';
import 'package:flutter/material.dart';

class RouteSection extends StatefulWidget {
  const RouteSection({
    Key? key,
  }) : super(key: key);

  @override
  State<RouteSection> createState() => _RouteSectionState();
}

class _RouteSectionState extends State<RouteSection> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buttonO(name: 'Log In ', ctx: context, route: 'login'),
            const SizedBox(
              height: 10,
            ),
            buttonO(name: 'Sign In', ctx: context, route: 'signup'),
          ],
        ),
      ),
    );
  }
}
