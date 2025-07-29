import 'package:flutter/material.dart';
import 'my_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // إذا كنت تستخدم FlutterFire CLI


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // لو عندك firebase_options.dart
  );
  runApp(const MyApp());
}
