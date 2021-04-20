import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:notes_app/pages/homepage.dart';
import 'package:notes_app/pages/login.dart';

import 'login.dart';

class tree extends StatefulWidget {
  @override
  _treeState createState() => _treeState();
}

class _treeState extends State<tree> {
  User user;
  @override
  void initState() {
    super.initState();
    OnRefresh(FirebaseAuth.instance.currentUser);
  }

  OnRefresh(UserCredential) async {
    setState(() {
      user = UserCredential;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return LoginPage();
    } else {
      return HomePage();
    }
  }
}
