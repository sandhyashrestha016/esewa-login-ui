import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 40, 170, 0),
                child: Column(
                  children: [
                    Image.asset(
                      "image/eSewa.png",
                      height: 80,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 30, 170, 0),
                child: Text(
                  "Welcome,",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 170, 0),
                child: Text(
                  "Sign in to continue",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 40, 120, 0),
                child: Text(
                  "eSewa ID (Mobile/Email)",
                  style: TextStyle(
                    fontSize: 19.5,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: SizedBox(
                  height: 100,
                  width: 390,
                  child: TextFormField(
                    cursorColor: Color(0xff60bb46),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email or Mobile',
                      fillColor: Colors.grey[200],
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 180, 0),
                child: Text(
                  "Password/MPIN",
                  style: TextStyle(
                    fontSize: 19.5,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: SizedBox(
                  height: 100,
                  width: 390,
                  child: TextFormField(
                    cursorColor: Color(0xff60bb46),
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                      ),
                      hintText: 'Password',
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(35, 0, 0, 5),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: Color(0xff60bb46),
                      value: checkBoxValue,
                      onChanged: (bool value) {
                        print(value);
                        setState(() {
                          checkBoxValue = value;
                        });
                      },
                    ),
                    Text(
                      "Remember Me",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(60, 0, 6, 0)),
                    Text(
                      "Forgot MPIN ?",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff60bb46),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                child: SizedBox(
                  height: 60,
                  width: 340,
                  child: RaisedButton(
                    color: Color(0xff60bb46),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      print("login");
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(45, 0, 0, 10)),
                  Icon(
                    Icons.fingerprint,
                    size: 45,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 5),
                    child: Text(
                      "Touch here to use fingerprint sensor to \n"
                      "login",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
                child: Text(
                  "Register For Free",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff60bb46),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
