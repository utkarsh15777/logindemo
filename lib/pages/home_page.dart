import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final user = FirebaseAuth.instance.currentUser;

  HomePage({super.key});

  void signOutUser() async{
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            onPressed: signOutUser, 
            icon: const Icon(Icons.logout)
          )
        ]
      ),
      body: Center(
        child: Text(
          "Logged In As: ${user?.email}",
          style: const TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}