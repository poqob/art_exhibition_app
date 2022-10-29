import 'package:art_exhibition_app/pages/homePage/components/bottom_bar.dart';
import 'package:art_exhibition_app/pages/homePage/components/temp_button.dart';
import 'package:art_exhibition_app/pages/homePage/util/glass_box.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // bottom bar navigation
  int _currentBottomIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentBottomIndex = index!;
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
