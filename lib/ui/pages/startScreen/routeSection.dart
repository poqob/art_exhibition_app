import 'package:art_exhibition_app/ui/pages/startScreen/util/routeButtons.dart';
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
            routeButtons(name: 'Log In ', ctx: context, route: 'login'),
            const SizedBox(
              height: 10,
            ),
            routeButtons(name: 'Sign In', ctx: context, route: 'signup'),
          ],
        ),
      ),
    );
  }
}
