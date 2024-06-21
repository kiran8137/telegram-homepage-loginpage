import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telegram_main/Homepage.dart';
import 'package:telegram_main/main.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _usernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  bool _isDataMatched = true;

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Form(
            key: _formkey,
            child: Container(
              child: Column(children: [
                TextFormField(
                  controller: _usernamecontroller,
                  decoration: InputDecoration(
                    hintText: "User Name",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Fields are empty';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Fields are empty';
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      checklogin(context);
                    } else {
                      print('Data Empty');
                    }
                  },
                  child: Text("Sign In"),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  void checklogin(BuildContext ctx) async {
    final _username = _usernamecontroller.text;
    final _password = _passwordcontroller.text;
    if (_username == _password) {
      final _sharedPrefs = await SharedPreferences.getInstance();
     await _sharedPrefs.setBool(SAVE_KEY_NAME, true);

      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => homepage()));
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          content: Text("Username Password not match"),
          duration: Duration(seconds: 5),
        ),
      );
    }
  }
}
