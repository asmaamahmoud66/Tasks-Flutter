import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellowAccent, Colors.pinkAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ListView(
            children: [
              const SizedBox(height: 60),
              const Text("Sign up", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const TextField(decoration: InputDecoration(hintText: 'Username', fillColor: Colors.white, filled: true)),
              const SizedBox(height: 10),
              const TextField(decoration: InputDecoration(hintText: 'Email', fillColor: Colors.white, filled: true)),
              const SizedBox(height: 10),
              const TextField(obscureText: true, decoration: InputDecoration(hintText: 'Password', fillColor: Colors.white, filled: true)),
              const SizedBox(height: 10),
              const TextField(obscureText: true, decoration: InputDecoration(hintText: 'Confirm Password', fillColor: Colors.white, filled: true)),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Sign up")),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Already have an account? Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
