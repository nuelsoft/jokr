import 'package:flutter/material.dart';
import 'package:joke/core/api.dart';
import 'package:joke/ui/crumbs/joke.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _joke;


  set joke(String j) {
    setState(() {
      _joke = j;
    });
  }

  @override
  void initState() {
    API.getJoke().then((value) {
      joke = value;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () async {
              joke = await API.getJoke();
            },
            child: ListView(padding: EdgeInsets.zero, children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: JokeItem(_joke),
                color: Colors.grey[50],
              ),
            ]),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Swipe done to refresh")),
            ),
          ),
        ],
      ),
    );
  }
}
