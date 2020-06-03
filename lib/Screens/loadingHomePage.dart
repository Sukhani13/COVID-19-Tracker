import 'package:COVID19/Services/World.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingHomePage extends StatefulWidget {
  @override
  _LoadingHomePageState createState() => _LoadingHomePageState();
}

class _LoadingHomePageState extends State<LoadingHomePage> {
  var world;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    world = await WorldModel().getWorldData();
    if (world == null) {
      Navigator.of(context).pushNamed('/error');
      return;
    }
    Navigator.of(context).popAndPushNamed('/home', arguments: world);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SpinKitHourGlass(
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Just a moment..."),
        ],
      ),
    );
  }
}
