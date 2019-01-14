import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

class ProfileTabs {
  final int index;
  final String name;
  final IconData icon;

  const ProfileTabs({this.index, this.name, this.icon});
}

const List<ProfileTabs> tabs = <ProfileTabs>[
  ProfileTabs(index: 0, name: "Profile", icon: Icons.person),
  ProfileTabs(index: 1, name: "Grade", icon: Icons.school),
  ProfileTabs(index: 2, name: "Parents", icon: Icons.group),
  ProfileTabs(index: 3, name: "Address", icon: Icons.add_location),
];

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: tabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: false,
                flexibleSpace: FlexibleSpaceBar(
                    title: Text("Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      "https://image.flaticon.com/icons/png/512/306/306473.png",
                      fit: BoxFit.fitHeight,
                    )),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white54,
                    indicatorColor: Colors.white,
                    tabs: tabs.map((ProfileTabs tabs) {
                      return Tab(
                        text: tabs.name,
                        icon: Icon(tabs.icon),
                      );
                    }).toList(),
                  ),
                ),
                pinned: true,
                floating: false,
              ),
            ];
          },
          body: TabBarView(
              children: tabs.map((ProfileTabs tabs) {
            return Padding(
              padding: EdgeInsets.all(0),
              child: Card(child: getData(tabs)),
            );
          }).toList()),
        ),
      ),
    );
  }
}

getData(ProfileTabs tabs) {
  switch (tabs.index) {
    case 0:
      return Container(child: getProfileData());
      break;

    case 1:
      return Container(
        child: getGradeData(),
      );
      break;
    case 2:
      return Container(
        child: getParentsData(),
      );
      break;
    case 3:
      return Container(
        child: getAddressData(),
      );
      break;
  }
}

getAddressData() {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text(
          "H.No",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "16-2-46",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Street/Colony",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "Karimguda, Rampally",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "City",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "Hyderabad",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "District",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "Rangareddi",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "State",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "Telangana",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Pin code",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "501301",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Phone",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "9993657966",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      )
    ],
  );
}

getParentsData() {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text(
          "Relation",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "Father",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Name",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "K.Ram Reddy",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Mobile",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "9993657966",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Email",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "-",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Relation",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "Mother",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Name",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "K.Chaitanya Nil",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Mobile",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "9993657966",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Email",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "-",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      )
    ],
  );
}

getGradeData() {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text(
          "School",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "Reqelford International School - Rampally",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Student Code",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "1300165",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Syllabus",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "CBSE",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Grade",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "III",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Section",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "G3 A",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Academic Year",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "AY2018-19",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      )
    ],
  );
}

getProfileData() {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text(
          "Name",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "Mayank Sharma",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Gender",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "Boy",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Born on",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "04-Nov-2010",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Mobile Number",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "9993657966",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      ),
      ListTile(
        title: Text(
          "Email",
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
        ),
        subtitle: Text(
          "mayanksharma@rmitsolutions.net",
          style: TextStyle(color: Colors.black87, fontSize: 16.0),
        ),
      ),
      Container(
        color: Colors.black26,
        height: 1,
      )
    ],
  );
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.deepPurple,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
