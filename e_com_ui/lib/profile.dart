import 'package:flutter/material.dart';
import 'history.dart';
import 'home.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Ecom App UI",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back"))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text("Home")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => History()));
                },
                child: Text("History")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Text("Profile")),
          ],
        ),
      ),
    );
  }
}
