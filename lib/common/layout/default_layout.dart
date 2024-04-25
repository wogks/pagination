import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final Color? color;
  const DefaultLayout({super.key, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color ?? Colors.white,
      body: child,
    );
  }
}
