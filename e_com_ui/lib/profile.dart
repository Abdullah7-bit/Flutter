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
          user(),
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

Widget user() {
  return ListTile(
    leading: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/aav.png'),
        ),
      ),
    ),
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "User",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "abc@gmail.com",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    subtitle: Column(
      children: [
        Text(
          "Logout",
          style: TextStyle(
            color: Colors.purple,
            fontSize: 10,
          ),
        ),
      ],
    ),
  );
}
