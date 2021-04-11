import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("riverpod with firebase"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '3',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }

}