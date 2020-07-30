//enter image description herePlease check below code :

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var scrollController = ScrollController();

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
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String url =
        "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    expandedHeight: 300.0,
                    floating: true,
                    pinned: true,
                    snap: false,
                    actionsIconTheme: IconThemeData(opacity: 0.0),
                    flexibleSpace: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Image.network(
                            url,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: Stack(
                children: <Widget>[
                  Image.network(
                    url,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        color: Colors.green),
                    child: Center(
                      child: Text("Good morning Braken"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
