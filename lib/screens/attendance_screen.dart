import 'package:flutter/material.dart';

class Attendance extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AttendanceState();
  }
}

class ProfileTabs {
  final int index;
  final String name;
  final IconData icon;
  const ProfileTabs({this.index,this.name, this.icon});
}

const List<ProfileTabs> tabs = <ProfileTabs>[
  ProfileTabs(index : 0,name: "Profile", icon: Icons.person),
  ProfileTabs(index : 1,name: "Grade", icon: Icons.school),
  ProfileTabs(index : 2,name: "Parents", icon: Icons.group),
  ProfileTabs(index : 3,name: "Address", icon: Icons.add_location),
];

class AttendanceState extends State<Attendance> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          bottom: TabBar(
            tabs: tabs.map((ProfileTabs tabs) {
              return Tab(
                text: tabs.name,
                icon: Icon(tabs.icon),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
            children: tabs.map((ProfileTabs tabs){
              return Padding(
                padding: EdgeInsets.all(0),
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      getData(tabs)
                    ],
                  ),
                ),
              );
            }).toList()
        ),
      ),
    );
  }

  getBody() {
    return Center(
      child: Text("Attendance"),
    );
  }

  getData(ProfileTabs tabs) {
    switch(tabs.index){
      case 0:
        return ListTile(
          title: Text("Name", style: TextStyle(fontSize: 10.0),),
        );
        break;
      case 1:
        return Text("Grades");
        break;
      case 2:
        return Text("Parents");
        break;
      case 3:
        return Text("Address");
        break;
    }
  }

}
