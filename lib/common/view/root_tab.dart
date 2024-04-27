import 'package:codefacprac/common/const/colors.dart';
import 'package:codefacprac/common/layout/default_layout.dart';
import 'package:codefacprac/restaurant/view/restaurant_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RootTab extends StatefulWidget {
  const RootTab({super.key});

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> with SingleTickerProviderStateMixin {
  int cuindex = 0;
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
    controller.addListener(tablistener);
  }

  void tablistener() {
    setState(() {
      cuindex = controller.index;
    });
  }

  @override
  void dispose() {
    controller.removeListener(tablistener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '배달앱',
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: PRIMARY_COLOR,
        unselectedItemColor: BODY_TEXT_COLOR,
        type: BottomNavigationBarType.fixed,
        currentIndex: cuindex,
        onTap: (value) {
          controller.animateTo(value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood_outlined),
            label: '음식',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            label: '주문',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: '프로필',
          ),
        ],
      ),
      child: TabBarView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const RestaurantScreen(),
          Center(
            child: Container(
              child: const Text('음식'),
            ),
          ),
          Center(
            child: Container(
              child: const Text('주문'),
            ),
          ),
          Center(
            child: Container(
              child: const Text('프로필'),
            ),
          ),
        ],
      ),
    );
  }
}
