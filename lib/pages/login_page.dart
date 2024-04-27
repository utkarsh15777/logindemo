import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:logindemo/components/my_button.dart';
import 'package:logindemo/components/my_textfield.dart';
import 'package:logindemo/components/squaretile.dart';
import 'package:logindemo/services/auth_service.dart';

class LoginPage extends StatefulWidget {

  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUserIn() async{
    
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator()
        );
      }
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      errorMessage(e.code);
    }

  }

  void errorMessage(String code){
    showDialog(
      context: context,
      builder:(context) {
        return Center(
          child: AlertDialog(
            backgroundColor: Colors.deepPurple,
            title: Center(
              child: Text(
                code
              ),
            ),
          ),
        );
      } 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SafeArea (
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
            
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
            
                const SizedBox(
                  height: 50,
                ),
            
                const Text(
                  "Welcome back, you've been missed !"
                ),
            
                const SizedBox(
                  height: 50,
                ),
            
                MyTextField(
                  textEditingController: emailController,
                  hintText: "Enter email",
                  obscureText: false,
                ),
            
                const SizedBox(
                  height: 20,
                ),
            
                MyTextField(
                  textEditingController: passwordController,
                  hintText: "Enter password",
                  obscureText: true,
                ),
            
                const SizedBox(
                  height: 20,
                ),
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.grey[600]
                        ),
                      ),
                    ],
                  ),
                ),
            
                const SizedBox(
                  height: 20,
                ),
            
                MyButton(
                  text: "Sign In",
                  onTap: signUserIn,
                ),
            
                const SizedBox(
                  height: 20,
                ),
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                  
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Or continue with",
                          style: TextStyle(
                            color: Colors.grey[700]
                          ),
                        ),
                      ),
                  
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
            
                const SizedBox(
                  height: 50,
                ),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MySquareTile(
                      onTap: () => AuthService().signInWithCoogle(),
                      imagePath: "lib/images/google.jpeg"
                    ),
            
                    const SizedBox(width: 25,),
                    
                    MySquareTile(
                      onTap: () => AuthService().signInWithCoogle(),
                      imagePath: "lib/images/apple.png"
                    )
                  ],
                ),
            
                const SizedBox(
                  height: 50,
                ),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Not a Member?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        "Register Now",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}