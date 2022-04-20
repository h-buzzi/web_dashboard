import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Row(children: [
        Expanded(flex: 1, child: Container(color: Colors.red)),
        Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
            )),
      ]),
    );
  }
}
