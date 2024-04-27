import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final Color? color;
  final String? title;
  final Widget? bottomNavigationBar;
  const DefaultLayout(
      {super.key,
      required this.child,
      this.color,
      this.title,
      this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _renderAppbar(),
      backgroundColor: color ?? Colors.white,
      body: child,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  AppBar? _renderAppbar() {
    if (title == null) {
      return null;
    } else {
      return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(title!),
      );
    }
  }
}
