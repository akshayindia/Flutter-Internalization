import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_widget.dart';

import 'my.i18n.dart';

// Developed by Marcelo Glasberg (Aug 2019).
// For more info, see: https://pub.dartlang.org/packages/i18n_extension

class MyScreen2 extends StatelessWidget {
  static const routeName = '/myscren2';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('My screen 2')),
      body: Center(
        child: Container(
          key: UniqueKey(),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          height: 200,
          color: Colors.grey[300],
          child: Column(
            children: [
              Text(
                "greetings".i18n,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
                 MaterialButton(
            color: Colors.blue,
            child: Text(
              "Hindi",
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            onPressed: (){
               I18n.of(context).locale =
      (I18n.localeStr == "hi") ? null : const Locale("hi");
            },
          ), MaterialButton(
            color: Colors.blue,
            child: Text(
              "English",
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            onPressed: (){
               I18n.of(context).locale =
      (I18n.localeStr == "en") ? null : const Locale("en");
            },
          ),
          Text(
            "Locale: ${I18n.locale}",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, color: Colors.grey),
          ),
            
            ],
          ),
        ),
      ),
    );
  }

}
