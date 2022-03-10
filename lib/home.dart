import 'package:codehouse_tugas3/custom/album.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/Ellipse.png"),
          ),
        ),
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'hi, Drow!',
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),
        ),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.notifications, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '      Our PhotogrApps',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 16),
                Text(
                  'Newest Photo',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 12),
                Albums(),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
