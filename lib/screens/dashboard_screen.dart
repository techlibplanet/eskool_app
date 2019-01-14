import 'package:flutter/material.dart';
import 'drawer_widget.dart';
import 'profile_screen.dart';
import 'attendance_screen.dart';
import 'worksheet_screen.dart';
import 'homework_screen.dart';
import 'circulars_screen.dart';
import 'library_screen.dart';
import 'cafeteria_screen.dart';
import 'transport_screen.dart';
import 'assessments_screen.dart';
import 'time_table_screen.dart';
import 'calendar_screen.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}

class DashboardState extends State<Dashboard> {
  final int thick_brown = int.parse("0xFFFFEFD5");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reqelboard'),
      ),
      drawer: DrawerWidget(),
      body: getBody(),
    );
  }

  getBody() {
    return ListView(
      itemExtent: 100.0,
      children: <Widget>[
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            child: Center(
              child: ListTile(
                title: Text('Profile'),
                subtitle: Text('Personal and grade information'),
                leading: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    color: Colors.lightBlue,
                  ),
                  backgroundColor: Color(thick_brown),
                ),
              ),
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Attendance()),
              );
            },
            child: Center(
              child: ListTile(
                title: Text('Attendance'),
                subtitle: Text("Child's daily attendance"),
                leading: CircleAvatar(
                  child: Icon(
                    Icons.playlist_add_check,
                    color: Colors.orange,
                  ),
                  backgroundColor: Color(thick_brown),
                ),
              ),
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Worksheets()),
              );
            },
            child: Center(
              child: ListTile(
                title: Text('Worksheets'),
                subtitle: Text("View and download worksheets"),
                leading: CircleAvatar(
                  child: Icon(
                    Icons.assignment_returned,
                    color: Colors.purple,
                  ),
                  backgroundColor: Color(thick_brown),
                ),
              ),
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homework()),
              );
            },
            child: Center(
              child: ListTile(
                title: Text('Home Work'),
                subtitle: Text('View and download home work'),
                leading: CircleAvatar(
                  child: Icon(
                    Icons.description,
                    color: Colors.deepOrange,
                  ),
                  backgroundColor: Color(thick_brown),
                ),
              ),
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Circulars()),
              );
            },
            child: Center(
              child: ListTile(
                title: Text('Circulars'),
                subtitle: Text('Circulars sent by school'),
                leading: CircleAvatar(
                  child: Icon(
                    Icons.note,
                    color: Colors.brown,
                  ),
                  backgroundColor: Color(thick_brown),
                ),
              ),
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Library()),
              );
            },
            child: Center(
              child: ListTile(
                title: Text('Library'),
                subtitle: Text("Books to be returned to library"),
                leading: CircleAvatar(
                  child: Container(
                    height: 48,
                    width: 48,
                    child: Icon(
                      Icons.local_library,
                      color: Colors.cyan,
                    ),
                  ),
                  backgroundColor: Color(thick_brown),
                ),
              ),
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cafeteria()),
              );
            },
            child: Center(
              child: ListTile(
                title: Text('Cafeteria'),
                subtitle: Text("View todays' menu"),
                leading: CircleAvatar(
                  child: Icon(
                    Icons.restaurant_menu,
                    color: Colors.green,
                  ),
                  backgroundColor: Color(thick_brown),
                ),
              ),
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Transport()),
              );
            },
            child: Center(
              child: ListTile(
                title: Text('Transport'),
                subtitle: Text('Route and vehicle information'),
                leading: CircleAvatar(
                  child: Icon(
                    Icons.airport_shuttle,
                    color: Colors.yellow,
                  ),
                  backgroundColor: Color(thick_brown),
                ),
              ),
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Assessments()),
              );
            },
            child: Center(
              child: ListTile(
                title: Text('Assessments'),
                subtitle: Text("Child's report card"),
                leading: CircleAvatar(
                  child: Icon(
                    Icons.assessment,
                    color: Colors.indigo,
                  ),
                  backgroundColor: Color(thick_brown),
                ),
              ),
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TimeTable()),
              );
            },
            child: Center(
              child: ListTile(
                title: Text('Time Table'),
                subtitle: Text("Class time table"),
                leading: CircleAvatar(
                  child: Icon(
                    Icons.schedule,
                    color: Colors.lightGreen,
                  ),
                  backgroundColor: Color(thick_brown),
                ),
              ),
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalendarScreen()),
              );
            },
            child: Center(
              child: ListTile(
                title: Text('Calendar'),
                subtitle: Text("School events calendar"),
                leading: CircleAvatar(
                  child: Icon(
                    Icons.event,
                    color: Colors.deepOrange,
                  ),
                  backgroundColor: Color(thick_brown),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
