import 'package:ecommerce_app/presentation_layer/screens/main_page.dart';
import 'package:ecommerce_app/presentation_layer/screens/orders_screen.dart';
import 'package:ecommerce_app/presentation_layer/screens/settings-screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List pages = [const MainPage(), OrdersScreen(), const SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withOpacity(0.3),
              backgroundColor: Colors.black,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              currentIndex: selectedIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle,
                  ),
                  label: 'Orderrs',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.edit,
                  ),
                  label: 'Settings',
                ),
              ],
            ),
            body: pages[selectedIndex]));
  }
}
