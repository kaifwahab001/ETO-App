import 'package:eto_ride/view/auth_screen/phoneNumber_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AccountMainScreen extends StatelessWidget {
  const AccountMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await FirebaseAuth.instance.signOut().then(
              (value) => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => PhoneNumberScreen()),
              ),
            );
          },
          child: Text('Singout'),
        ),
      ),
    );
  }
}
