import 'package:flutter/material.dart';
import 'package:usingnavigationdrawer/pages/page_1.dart';
import 'package:usingnavigationdrawer/pages/page_2.dart';
import 'package:usingnavigationdrawer/pages/page_3.dart';

class UserDrawer extends StatelessWidget {
  const UserDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning Drawer"),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (ctx) => PageThree(
                  //               msg: "sdfsdfs",
                  //             )));
                  Navigator.pushNamed(context, "/page_one");
                },
                child: Text("Go To next Page"))
          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.all(25),
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
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return PageOne();
                }));
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return PageOne();
                }));
              },
            ),
            ListTile(
              title: const Text('close the Drawer'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return PageThree();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
