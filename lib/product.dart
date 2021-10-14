import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(
    home: Second(),
  ));
}
class Second extends StatefulWidget {
  const Second({Key key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFF6CB1E2),
      ),
      drawer: Drawer(

        child: ListView(

        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
      ),
            child: Text('Drawer Header'),
      ),
           ListTile(
             title: const Text('Item 1'),
             onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer
          Navigator.pop(context);
        },
      ),
          ListTile(
           title: const Text('Item 2'),
            onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer
          Navigator.pop(context);
        },
      ),
      ]
    ),
    ),

    );
  }
}
