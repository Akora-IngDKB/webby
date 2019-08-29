import 'package:flutter/material.dart';
import 'package:webby/second.dart';

main() => runApp(
      MaterialApp(
        title: 'Webby',
        routes: {'/second': (context) => SecondPage()},
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: WebbyHome(),
      ),
    );

class WebbyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text('Webby'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
        ],
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(blurRadius: 6, color: Colors.grey, spreadRadius: 4)
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 100),
              SizedBox(height: 20),
              TextField(
                autofocus: true,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 35),
              TextField(
                autofocus: true,
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 50),
              RaisedButton(
                shape: StadiumBorder(),
                splashColor: Colors.orange,
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).pushNamed('/second');
                },
                child: Text('LOG IN', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.message),
        label: Text('Contact Us'),
        onPressed: () {},
      ),
    );
  }
}
