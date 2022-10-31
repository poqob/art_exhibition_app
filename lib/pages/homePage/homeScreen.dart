import 'package:art_exhibition_app/pages/homePage/components/bottom_bar.dart';
import 'package:art_exhibition_app/pages/homePage/components/temp_button.dart';
import 'package:art_exhibition_app/pages/homePage/util/glass_box.dart';
import 'package:flutter/material.dart';

class FlowPage extends StatefulWidget {
  const FlowPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<FlowPage> createState() => _FlowPageState();
}

class _FlowPageState extends State<FlowPage> {
  // bottom bar navigation
  int _currentBottomIndex = 0;
  void _handleIndexChanged(int? index) {
    String route = "bbr$index";
    setState(() {
      _currentBottomIndex = index!;
      index != 0
          ? Navigator.of(context).pushNamed(route)
          : Navigator.of(context).popAndPushNamed(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              //@TODO: these are temp widgets.
              oButton(1, context),
              oButton(2, context),
              oButton(3, context),
              oButton(1, context),
              oButton(2, context),
              oButton(3, context),
              oButton(1, context),
              oButton(2, context),
              oButton(3, context),
              oButton(1, context),
              oButton(2, context),
              oButton(3, context),
              oButton(1, context),
              oButton(2, context),
              oButton(3, context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GlassBox(
        child: MyBottomBar(
          index: _currentBottomIndex,
          onTap: _handleIndexChanged,
        ),
      ),
    );
  }
}
