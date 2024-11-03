import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'auth/auth.dart';
import 'auth/login_or_register.dart';
import 'firebase_options.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/users_page.dart';
import 'theme/theme.dart';

// heres the tutorial just incase
// https://www.youtube.com/watch?v=zohXXZBUVYI
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/login_register_page': (context) => const LoginOrRegister(),
        '/home_page': (context) => HomePage(),
        '/profile_page': (context) => ProfilePage(),
        '/users_page': (context) => const UsersPage(),
      },
    );
  }
}
