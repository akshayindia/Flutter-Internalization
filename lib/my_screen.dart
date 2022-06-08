import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_widget.dart';

import 'my.i18n.dart';
import 'my_screen2.dart';

// Developed by Marcelo Glasberg (Aug 2019).
// For more info, see: https://pub.dartlang.org/packages/i18n_extension

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  late int counter;

  @override
  void initState() {
    super.initState();
    counter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(flex: 2),
          ElevatedButton(onPressed: (() => Navigator.of(context).pushNamed(MyScreen2.routeName)), child: Text('My Screen 2')),
          const Spacer(),
          Container(
            height: 50,
            alignment: Alignment.center,
            child: Text(
              "youClickedThisNumberOfTimes".i18n,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 17),
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            child: Text(
              "increment".i18n,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            onPressed: _increment,
          ),
          const Spacer(),
          MaterialButton(
            color: Colors.blue,
            child: Text(
              "Hindi",
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            onPressed: _onPressed,
          ), MaterialButton(
            color: Colors.blue,
            child: Text(
              "English",
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            onPressed: _onPressed1,
          ),
          Text(
            "Locale: ${I18n.locale}",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, color: Colors.grey),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }

  void _onPressed() => I18n.of(context).locale =
      (I18n.localeStr == "hi") ? null : const Locale("hi");
        void _onPressed1() => I18n.of(context).locale =
      (I18n.localeStr == "en") ? null : const Locale("en");

  void _increment() => setState(() => counter++);
}
