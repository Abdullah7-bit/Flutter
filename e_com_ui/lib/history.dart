import 'package:flutter/material.dart';
import 'package:e_com_ui/profile.dart';
import 'home.dart';
// import 'package:e_com_ui/history.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<History> {
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
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
              child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    suffixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            iphone(),
            not20(),
            macair(),
            macpro(),
            gampc(),
            keybd(),
            mercedes(),
            mutton(),
            roadster(),
            royal(),
          ],
        ),
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

Widget iphone() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/ip12.jpg'),
      radius: 30,
    ),
    title: Text("Iphone 12"),
    subtitle: Text(
      "5.0  (23 Reviews)",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("€10"),
      ],
    ),
  );
}

Widget not20() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/note20.jpg'),
      radius: 30,
    ),
    title: Text("Note 20 Ultra"),
    subtitle: Text(
      "5.0  (23 Reviews)",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("€10"),
      ],
    ),
  );
}

Widget macair() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/m1.jpg'),
      radius: 30,
    ),
    title: Text("MacBook Air"),
    subtitle: Text(
      "5.0  (23 Reviews)",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("€10"),
      ],
    ),
  );
}

Widget macpro() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/macpro.jpg'),
      radius: 30,
    ),
    title: Text("MacBook Pro"),
    subtitle: Text(
      "5.0  (23 Reviews)",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("€10"),
      ],
    ),
  );
}

Widget gampc() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/gampc.jpg'),
      radius: 30,
    ),
    title: Text("Gaming PC"),
    subtitle: Text(
      "5.0  (23 Reviews)",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("€10"),
      ],
    ),
  );
}

Widget keybd() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/baclit_keyboard.jpg'),
      radius: 30,
    ),
    title: Text("Backlit Keyboard"),
    subtitle: Text(
      "5.0  (23 Reviews)",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("€10"),
      ],
    ),
  );
}

Widget mercedes() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/mercedes.jpg'),
      radius: 30,
    ),
    title: Text("Mercedes"),
    subtitle: Text(
      "5.0  (23 Reviews)",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("€10"),
      ],
    ),
  );
}

Widget mutton() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/mutton.jpg'),
      radius: 30,
    ),
    title: Text("Mutton"),
    subtitle: Text(
      "5.0  (23 Reviews)",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("€10"),
      ],
    ),
  );
}

Widget roadster() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/roadster.jpg'),
      radius: 30,
    ),
    title: Text("Roadster"),
    subtitle: Text(
      "5.0  (23 Reviews)",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("€10"),
      ],
    ),
  );
}

Widget royal() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/royal.jpg'),
      radius: 30,
    ),
    title: Text("Royal Field"),
    subtitle: Text(
      "5.0  (23 Reviews)",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("€10"),
      ],
    ),
  );
}
