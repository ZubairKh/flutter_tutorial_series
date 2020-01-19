import 'package:flutter/material.dart';
import 'package:flutter_turorial_series/screens/my_simple_dialog.dart';
import 'model/example_list.dart';

void main() => runApp(MyApp());

ThemeData myTheme = ThemeData(
  primarySwatch: Colors.teal,
  buttonColor: Colors.teal,
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => MyHomePage(),
        "/MySimpleDialog": (BuildContext context) => MySimpleDialog()
      },
    );
  }
}

final List<ExampleList> _examplesList = <ExampleList>[
  ExampleList(
    title: 'Simple Dialog',
    subTitle: 'A simple dialog using material design components...',
  ),
  ExampleList(
    title: 'Custom Floating Button',
    subTitle: 'A custom Floating button widget using material design...',
  ),
  ExampleList(
    title: 'Bottom Navigation',
    subTitle:
        'Bottom navigation bars allow movement between primary destinations in an app...',
  ),
  ExampleList(
    title: 'More Designs',
    subTitle: 'Coming soon :). You are welcome to contribute anytime...',
  ),
];

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design Learning'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: _examplesList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            contentPadding: EdgeInsets.all(5),
            leading: CircleAvatar(
              child: Text(_examplesList[index].title[0]),
            ),
            title: Text(_examplesList[index].title),
            subtitle: Text(_examplesList[index].subTitle),
            onTap: () {
              Navigator.of(context).pushNamed("/MySimpleDialog");
            },
          );
        },
      ),
    );
  }
}
