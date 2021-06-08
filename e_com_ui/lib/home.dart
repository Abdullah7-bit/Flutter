import 'package:flutter/material.dart';
import 'package:e_com_ui/profile.dart';
import 'package:e_com_ui/history.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
              child: Column(
          children: [
            itm1(),
            SizedBox(
              height: 10,
            ),
            itm2(),
            SizedBox(
              height: 10,
            ),
            itm3(),
            SizedBox(
              height: 10,
            ),
            itm4(),
            SizedBox(
              height: 10,
            ),
            gamipc(),
          ],
        ),
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
      ),
    );
  }
}

Widget itm1() {
  return Row(
    children: [
      Image.asset('assets/ip12.jpg', width: 200),
      Text("Iphone 12")
    ],
  );
}

Widget itm2() {
  return Row(
    children: [
      Image.asset('assets/note20.jpg', width: 200),
      Text("Note 20 Ultra")
    ],
  );
}

Widget itm3() {
  return Row(
    children: [
      Image.asset('assets/m1.jpg', width: 200),
      Text("Macbool Air")
    ],
  );
}

Widget itm4() {
  return Row(
    children: [
      Image.asset('assets/macpro.jpg', width: 200),
      Text("Macbook Pro")
    ],
  );
}

Widget gamipc() {
  return Row(
    children: [
      Image.asset('assets/gampc.jpg',  width: 200),
      Text("Gaming PC")
    ],
  );
}
