import 'package:flutter/material.dart';
import '../config/palette.dart';
import '../screens/welcome/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomeDrawer extends StatelessWidget {
  BuildContext get context => null;

  String username = "Dashboard";
  // Future<Null> checkIsLogin() async {
  //   String username = "";
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   username = prefs.getString("user_data");
  //   if (username != "" && username != null) {
  //     print("alreay login.");

  //     //your home page is loaded
  //   } else {
  //     //replace it with the login page
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => new WelcomeScreen()),
  //     );
  //   }
  // }

  //String usename = checkIsLogin();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bmt_logo_slogan.png"),
                fit: BoxFit.cover,
              ),
            ),
            height: 100,
            child: DrawerHeader(
              padding: EdgeInsets.all(10),
              child: Text(
                username,
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Palette.primaryColor,
              ),
            ),
          ),
          ListTile(
            title: Text('Đăng xuất'),
            onTap: () async {
              _logout().then((_) => {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                WelcomeScreen())).then((value) =>
                        Fluttertoast.showToast(
                            msg: "Đăng xuất thành công",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.TOP,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0))
                  });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  _logout() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove("user_data");
    await pref.remove("user_token");
  }
}
