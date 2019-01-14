import 'package:flutter/material.dart';
import 'drawer_widget.dart';
import 'package:eskool_app/helper/strings.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AboutState();
  }
}

class AboutState extends State<About> {
  //String appDescription = "Reqelford mobile app brings parents, teachers, and students together on a common interactive platform to foster a collaborative environment.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      drawer: DrawerWidget(),
      body: getBody(),
    );
  }

  getBody() {
    var assetImageLogo = AssetImage('assets/images/reqelford.png');
    var imageLogo = Image(image: assetImageLogo, height: 150.0, width: 200.0);

    _launchUrl(String url) async {
      if (await canLaunch(url)) {
        //await launch(url,forceSafariVC: true, forceWebView: true);      // To forcefully launch on safari and chrome browser
        await launch(url);
      } else {
        debugPrint("Can't launch Url");
      }
    }

    // Todo mail to not working
    Future _launchURL(String toMailId, String subject, String body) async {
      var url = 'mailto:smith@example.org?subject=News&body=New%20plugin';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Center(
      child: ListView(
        //padding: EdgeInsets.symmetric(vertical: 10.0),
        children: <Widget>[
          getImage(imageLogo),
          getAppDescription(),
          Container(
            margin: EdgeInsets.only(top: 30),
            color: Colors.black12,
            height: 1,
          ),
          ListTile(
            leading: Icon(
              Icons.perm_device_information,
              color: Colors.purple,
            ),
            title: Text(appVersion),
          ),
          Container(
            color: Colors.black12,
            height: 1,
          ),
//          ListTile(
//            leading: Icon(null),
//            title: Text("Connect with us"),
//          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Connect with us",
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {
              _launchURL(email, 'Mayank', 'This is a simple message');
            },
            leading: Icon(
              Icons.email,
              color: Colors.blueGrey,
            ),
            title: Text("Contact us"),
          ),
          Container(
            color: Colors.black12,
            height: 1,
          ),
          ListTile(
            onTap: () {
              _launchUrl(schoolWebsite);
            },
            leading: Icon(
              Icons.public,
              color: Colors.green,
            ),
            title: Text("Visit our website"),
          ),
          Container(
            color: Colors.black12,
            height: 1,
          ),
          ListTile(
            onTap: () {
              _launchUrl(blogUrl);
            },
            leading: Image(
              image: AssetImage('assets/images/blogger.png'),
              color: Colors.orangeAccent,
              height: 24,
              width: 24,
            ),
            title: Text("Visit our blog"),
          ),
          Container(
            color: Colors.black12,
            height: 1,
          ),
          ListTile(
            onTap: () {
              _launchUrl(facebookUrl);
            },
            leading: Image(
              image: AssetImage('assets/images/facebook-box.png'),
              color: Colors.indigo,
              height: 24,
              width: 24,
            ),
            title: Text("Like us on Facebook"),
          ),
          Container(
            color: Colors.black12,
            height: 1,
          ),
          ListTile(
            onTap: () {
              _launchUrl(twitterUrl);
            },
            leading: Image(
              image: AssetImage('assets/images/twitter-box.png'),
              color: Colors.blueAccent,
              height: 24,
              width: 24,
            ),
            title: Text("Follow us on Twitter"),
          ),
          Container(
            color: Colors.black12,
            height: 1,
          ),
          ListTile(
            onTap: () {
              _launchUrl(youtubeUrl);
            },
            leading: Image(
              image: AssetImage('assets/images/youtube.png'),
              color: Colors.red,
              height: 24,
              width: 24,
            ),
            title: Text("Watch us on Youtube"),
          ),
          Container(
            color: Colors.black12,
            height: 1,
          ),
          ListTile(
            onTap: () {
              _launchUrl(playStoreUrl);
            },
            leading: Image(
              image: AssetImage('assets/images/google-play.png'),
              color: Colors.teal,
              height: 24,
              width: 24,
            ),
            title: Text("Rate us on the Play Store"),
          ),
          Container(
            color: Colors.black12,
            height: 1,
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Center(
              child: Text(copyRight),
            ),
          )
        ],
      ),
    );
  }

  // App Logo Image View
  getImage(Image image) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      //decoration: BoxDecoration(),
      child: image,
    );
  }

  getAppDescription() {
    return Container(
      margin: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Text(
        appDescription,
        style: TextStyle(fontStyle: FontStyle.normal, height: 1.5),
        textAlign: TextAlign.center,
      ),
    );
  }
}
