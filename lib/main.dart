import 'package:flutter/material.dart';

main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  App createState() => new App();
}

class App extends State<MyApp> {
  void login() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Block Chain",
      home: new Scaffold(
          body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.cover)),
          ),
          new Center(
            child: new Container(
              width: 300.0,
              height: 300.0,
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white.withOpacity(0.4),
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: new Container(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      height: 100.0,
                      //    margin: EdgeInsets.symmetric(horizontal: 150.0, vertical: 100.0),
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                              image: new AssetImage('assets/images/logo.png'),
                              fit: BoxFit.contain)),
                    ),
                    new Container(
                      child: new TextField(
                        decoration: new InputDecoration(
                          hintText: "Enter User id",
//                            border: new OutlineInputBorder(
//                              borderRadius: new BorderRadius.circular(10.0),
//                            ),
                        ),
                      ),
                    ),
                    new Container(
                      child: new TextField(
                        obscureText: true,
                        decoration: new InputDecoration(
                          hintText: "Enter Password",
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(
                        top: 30,
                      ),
                      child: new RaisedButton(
                        elevation: 8.0,
                        textColor: Colors.white,
                        color: Colors.blue,
                        onPressed: login,
                        child: new Text("Login"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
