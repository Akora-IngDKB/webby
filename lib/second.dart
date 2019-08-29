import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text('Second'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FlutterLogo(
              size: 150,
            ),
            SizedBox(
              height: 50,
            ),
            Text('Welcome to the Second Page'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.power_settings_new),
      ),
    );
  }
}
