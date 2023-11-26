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
            height: 250,
          ),
          Text(
            "Welcome!",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
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
                      hintText: "Enter Username", labelText: "Username"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/homepage");
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        fixedSize: Size(300, 30),
                        textStyle: TextStyle(fontSize: 17)),
                    child: Text("Login")),
                SizedBox(
                  height: 10,
                ),
                Text("Forgot Password?")
              ],
            ),
          )
        ],
      ),
    ));
  }
}
