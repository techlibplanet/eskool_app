import 'package:flutter/material.dart';
import 'package:eskool_app/models/user_model.dart';
import 'package:eskool_app/helper/dialogs.dart';
import 'dashboard_screen.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignInState();
  }
}

class SignInState extends State<SignIn> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  UserModel userModel;
  Dialogs dialogs = new Dialogs();

  @override
  Widget build(BuildContext context) {
    var assetImage = AssetImage('assets/reqelford.png');
    var image = Image(image: assetImage, height: 150.0, width: 150.0);
    TextStyle textStyle = Theme.of(context).textTheme.subhead;
    userModel = UserModel(userNameController.text, passwordController.text);

    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            getImage(image),
            Card(
              child: Container(
                child: Padding(
                    padding:
                        EdgeInsetsDirectional.only(top: 15.0, bottom: 15.0),
                    child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: <Widget>[
                            // UserName text Field
                            getUserNameTextField(textStyle),
                            // Password Text Field
                            getPasswordTextField(textStyle),
                            // Login Button
                            getLoginButton(),
                            // Forgot Password Button
                            getForgotPasswordButton()
                          ],
                        ))),
              ),
            )
          ],
        )),
      ),
    );
  }

  void updateUserName() {
    userModel.username = userNameController.text;
  }

  void updatePassword() {
    userModel.password = passwordController.text;
  }

  // Get Username TextField
  getUserNameTextField(TextStyle textStyle) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: userNameController,
        style: textStyle,
        onChanged: (value) {
          updateUserName();
        },
        decoration: getTextFieldDecoration(textStyle),
      ),
    );
  }

  // Password TextField
  getPasswordTextField(TextStyle textStyle) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: passwordController,
        style: textStyle,
        obscureText: true,
        onChanged: (value) {
          updatePassword();
        },
        decoration: getTextFieldDecoration(textStyle),
      ),
    );
  }

  // Add decoration to text field   Todo - Check this code tomarrow
  getTextFieldDecoration(TextStyle textStyle) {
    return InputDecoration(
        labelText: "Password",
        labelStyle: textStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ));
  }

  // Login Button
  getLoginButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
          textColor: Theme.of(context).primaryColorDark,
          child: Text(
            'LOGIN',
            textScaleFactor: 1.2,
          ),
          onPressed: () {
            setState(() {
              _login();
            });
          }),
    );
  }

  // Forgot Password Button
  getForgotPasswordButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
          //color: Colors.white,
          textColor: Colors.black54,
          child: Text(
            'FORGOT PASSWORD',
            textScaleFactor: 1,
          ),
          onPressed: () {
            setState(() {
              _forgotPassword();
            });
          }),
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

  void _forgotPassword() {
    debugPrint("Forgot password Clicked");
  }

  void _login() async {
    debugPrint(
        "Login Clicked - UserName : ${userModel.username} Password : ${userModel.password}");
    if (userModel.username == "Mayank" && userModel.password == "test123") {
      dialogs.showSimpleDialog(context, "Login", "Login Successful");
      Route route = MaterialPageRoute(builder: (context) => Dashboard());
      Navigator.pushReplacement(context, route);
    } else {
      dialogs.showSimpleDialog(context, "Login", "Login Failed");
    }
  }
}
