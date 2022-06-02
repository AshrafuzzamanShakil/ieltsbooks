import 'package:flutter/material.dart';
import 'package:ieltsbooks/screens/auth/authenticate.dart';
import 'package:ieltsbooks/screens/auth/sing_in.dart';
import 'package:ieltsbooks/screens/home/homepage.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignIn();
  }
}
