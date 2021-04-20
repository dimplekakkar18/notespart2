import 'package:flutter/material.dart';
import 'package:notes_app/controller/google_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                "assets/1.png",
              ))),
            )),
            Padding(
                padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 12.0,
            )),
            Text(
              "Create And Manage",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  signInWithGoogle(context);
                },
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Continue With Google",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Image.asset(
                    "assets/2.png",
                    height: 36,
                  )
                ]),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      vertical: 12.0,
                    ))),
              ),
            ),
            SizedBox(
              height: 15.0,
            )
          ],
        ),
      ),
    );
  }
}
