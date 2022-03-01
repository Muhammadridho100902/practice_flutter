// ignore_for_file: prefer_const_constructors

import 'package:firebase_login_google/google_signin.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Signn in with Google",
                  style: TextStyle(fontSize: 26),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        Text(
          "Hii Mother",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600
          ),
        )
      ],
    );
  }
}
