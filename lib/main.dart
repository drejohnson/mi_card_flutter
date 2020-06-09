import 'package:flutter/material.dart';
import 'package:mi_card/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiCard',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: new AssetImage('images/me.jpg'),
                    radius: 50.0,
                  ),
                  Text(
                    'DeAndre Johnson',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Fullstack Developer'.toUpperCase(),
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 40.0,
                    child: Divider(
                      color: Colors.white70,
                      indent: 60.0,
                      endIndent: 60.0,
                    ),
                  ),
                  Contact(
                    text: "drejohnson212@gmail.com",
                    icon: Icons.email,
                  ),
                  Contact(
                    text: "+1 404 940 9520",
                    icon: Icons.phone,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({@required this.text, @required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          this.icon,
          color: Colors.teal,
        ),
        title: Text(
          this.text,
          style: TextStyle(
            color: Colors.teal,
            fontSize: 16.0,
            fontFamily: 'Oswald',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
