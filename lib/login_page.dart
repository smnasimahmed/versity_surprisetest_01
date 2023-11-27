// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/image/10504567_4478108-01.jpg"),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Container(
              child: ClipOval(
            child: SizedBox.fromSize(
              size: Size.fromRadius(48), // Image radius
              child: Image.asset("lib/image/4.jpg", fit: BoxFit.cover),
            ),
          )),
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Text(
                "Welcome!",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                      labelStyle: TextStyle(color: Colors.white),
                      floatingLabelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.white),
                      floatingLabelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/homepage");
                    },
                    style: TextButton.styleFrom(
                        shadowColor: Colors.black,
                        elevation: 7,
                        foregroundColor: Colors.white,
                        fixedSize: Size(300, 30),
                        textStyle: TextStyle(fontSize: 17)),
                    child: Text("Login",
                        style: TextStyle(
                            color: Color.fromARGB(255, 104, 49, 155)))),
                SizedBox(
                  height: 10,
                ),
                Text("Forgot Password?", style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 110,
                ),
                Text("Don't have an account?",
                    style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        fixedSize: Size(150, 30),
                        textStyle: TextStyle(fontSize: 17)),
                    child: Text("Create",
                        style: TextStyle(
                            color: Color.fromARGB(255, 104, 49, 155)))),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
