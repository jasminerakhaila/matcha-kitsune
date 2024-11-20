import 'package:flutter/material.dart';
import 'package:matcha_kitsune/screens/menu.dart';
import 'package:matcha_kitsune/screens/login.dart';
import 'package:matcha_kitsune/screens/menu.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Matcha Kitsune',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.green,
          ).copyWith(secondary: const Color.fromARGB(255, 59, 147, 73)),
        ),
        home: const LoginPage(),
      ),
    );
  }
}