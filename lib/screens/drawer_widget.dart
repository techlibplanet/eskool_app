import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'downloads_screen.dart';
import 'contact_screen.dart';
import 'about_screen.dart';
import 'signin_screen.dart';

class DrawerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DrawerWidgetState();
  }
}

// Todo change the tile color after selection of a particular screen
class DrawerWidgetState extends State<DrawerWidget> {
  var isSelected = false;
  var myColor = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Mayank Sharma'),
              accountEmail: Text('mayanksharma@rmitsolutions.net'),
              currentAccountPicture: Center(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7DEyXjzzc3AqeD03-lBW1HWpbDiqcokTEkAS_akjmvuL3PNmW"),
                  ),
                ),
              ),

//                decoration: BoxDecoration(
//                  color: Colors.deepPurple,
//                  image: DecorationImage(
//                    fit: BoxFit.fill,
//                      //image: AssetImage('assets/reqelford.png')),
//                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7DEyXjzzc3AqeD03-lBW1HWpbDiqcokTEkAS_akjmvuL3PNmW")),
//                ),
            ),
            Divider(
              indent: 16.0,
              color: Colors.white54,
            ),
            Material(
              color: Colors.deepPurple,
              child: ListTile(
                title: Text(
                  'Reqelboard',
                  style: TextStyle(color: Colors.white70),
                ),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.white70,
                ),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => Dashboard());
                  Navigator.pushReplacement(context, route);
                },
              ),
            ),
            Material(
              color: Colors.deepPurple,
              child: ListTile(
                title:
                    Text('Downloads', style: TextStyle(color: Colors.white70)),
                leading: Icon(
                  Icons.file_download,
                  color: Colors.white70,
                ),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => Downloads());
                  Navigator.pushReplacement(context, route);
                },
              ),
            ),
            Material(
              color: Colors.deepPurple,
              child: ListTile(
                title: Text('Contact', style: TextStyle(color: Colors.white70)),
                leading: Icon(
                  Icons.phone_android,
                  color: Colors.white70,
                ),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => Contact());
                  Navigator.pushReplacement(context, route);
                },
              ),
            ),
            Divider(
              indent: 16.0,
              color: Colors.white54,
            ),
            Material(
              color: Colors.deepPurple,
              child: ListTile(
                selected: isSelected,
                title: Text('About', style: TextStyle(color: Colors.white70)),
                leading: Icon(
                  Icons.info,
                  color: Colors.white70,
                ),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => About());
                  Navigator.pushReplacement(context, route);
                },
              ),
            ),
            ListTile(
              title: Text('Logout', style: TextStyle(color: Colors.white70)),
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.white70,
              ),
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => SignIn());
                Navigator.pushReplacement(context, route);
              },
            ),
          ],
        ),
      ),
    );
  }

  // Change color not working check this also
  void toggleSelection() {
    setState(() {
      if (isSelected) {
        myColor = Colors.deepPurple;
        isSelected = false;
      } else {
        myColor = Colors.white54;
        isSelected = true;
      }
    });
  }
}
