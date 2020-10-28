//enter image description herePlease check below code :

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}

class Home extends StatefulWidget {
//  ScrollController scrollController = ScrollController();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url =
      "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
//      put SingleChildScrollView here if you want the image to be moved with the scroll
          SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 340,
              child: Image.network(
                url,
                fit: BoxFit.cover,
              ),
            ),
            //      put SingleChildScrollView here if you want the image to be fixed with the scroll
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Colors.green),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Good morning Braken"),
                      SizedBox(
                        height: 400,
                      ),
                      Text("Good morning Braken"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
