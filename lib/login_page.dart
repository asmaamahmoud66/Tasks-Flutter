
import 'package:flutter/material.dart';
import 'signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 128, 255, 0), Color.fromRGBO(255, 64, 129, 1)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome Back", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const TextField(decoration: InputDecoration(hintText: 'Username', fillColor: Colors.white, filled: true)),
              const SizedBox(height: 10),
              const TextField(obscureText: true, decoration: InputDecoration(hintText: 'Password', fillColor: Colors.white, filled: true)),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Login")),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUpPage()));
                },
                child: const Text("Don't have an account? Sign Up"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
