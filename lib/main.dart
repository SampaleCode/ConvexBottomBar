import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Convex Bottom Bar',
      home: ConvexBar(),
    );
  }
}

class ConvexBar extends StatefulWidget {
  const ConvexBar({Key? key}) : super(key: key);

  @override
  State<ConvexBar> createState() => _ConvexBarState();
}

class _ConvexBarState extends State<ConvexBar> {
  var barIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Convex Bottom Bar',
        ),
      ),
      body: Center(
        child: Text('Bottom Bar Index: $barIndex',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.person, title: 'User'),
          TabItem(icon: Icons.settings, title: 'Setting'),
        ],
        initialActiveIndex: 0,
        onTap: (int index) {
          setState(() {
            barIndex = index;
          });
        },
      ),
    );
  }
}
