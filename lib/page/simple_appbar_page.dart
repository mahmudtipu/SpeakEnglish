import 'package:speakenglish/main.dart';
import 'package:flutter/material.dart';

class SimpleAppBarPage extends StatefulWidget {
  @override
  _SimpleAppBarPageState createState() => _SimpleAppBarPageState();
}

class _SimpleAppBarPageState extends State<SimpleAppBarPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
        //backgroundColor: Colors.purple,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.pink],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        bottom: TabBar(
          //isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          tabs: [
            Tab(icon: Icon(Icons.home), text: 'Feed'),
            Tab(icon: Icon(Icons.help_center), text: 'Ask'),
            Tab(icon: Icon(Icons.next_plan_sharp), text: 'Guide'),
          ],
        ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body: TabBarView(
        children: [
          buildPage('Feed Page'),
          buildPage('Ask Page'),
          buildPage('Tips Page'),
        ],
      ),
    ),
  );

  Widget buildPage(String text) => Center(
    child: Text(
      text,
      style: TextStyle(fontSize: 28),
    ),
  );
}