import 'package:flutter/cupertino.dart';
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
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
        body: Container(
            child: Column(children: [
              user(),
              Text("Account Information", style: TextStyle(fontSize: 30)),
              nm(),
              em(),
              pm(),
              add(),
              gen(),
              dob(),
            ]),
          ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
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
        ));
  }
}

Widget user() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/aav.png',),
      radius: 40,
    ),
    title: Column(
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
    subtitle: Text(
      "Logout",
      style: TextStyle(
        color: Colors.purple,
        fontSize: 10,
      ),
    ),
  );
}

Widget nm() {
  return ListTile(
      title: Text("Full Name"),
      subtitle: Text(
        "User",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
     );
}

Widget em() {
  return ListTile(
    title: Text("Email"),
    subtitle: Text(
      "user@gmail.com",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
  );
}

Widget pm() {
  return ListTile(
    title: Text("Phone"),
    subtitle: Text(
      "+92 0000 0000",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
  );
}

Widget add() {
  return ListTile(
    title: Text("Address"),
    subtitle: Text(
      "Street, Area, New York",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
  );
}

Widget gen() {
  return ListTile(
    title: Text("Gender"),
    subtitle: Text(
      "Male",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
  );
}

Widget dob() {
  return ListTile(
    title: Text("Date of Birth"),
    subtitle: Text(
      "October 13, 1999",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
  );
}
