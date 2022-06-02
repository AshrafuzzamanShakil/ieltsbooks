import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ieltsbooks/services/auth.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.green.shade400,
                onPrimary: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
              icon: const Icon(Icons.facebook),
              label: const Text('Sign In With Google'),
              onPressed: () async {
                final provider =
                    Provider.of<AuthService>(context, listen: false);
                provider.signInWithGoogle();

                setState(() {});
              },
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
