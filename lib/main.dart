import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/screens/dashbord_screen.dart';
import 'package:template_project/screens/profile_screen.dart';
import 'package:template_project/screens/message_screen.dart';
import 'package:template_project/screens/signup_screen.dart';
import 'package:template_project/screens/welcome_screen.dart';
import 'package:template_project/screens/signin_screen.dart';
import 'providers/message_provider.dart';
import 'providers/user_provider.dart';
import 'package:template_project/screens/messages.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MessageProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UAS Fitria Ayu Pratiwi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/message': (context) => MessagesScreen(),
        '/signup': (context) => SignUpScreen(),
        '/signin': (context) => SignInScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
