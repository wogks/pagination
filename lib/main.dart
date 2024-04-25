import 'package:codefacprac/user/view/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const _APP());
}

class _APP extends StatelessWidget {
  const _APP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
