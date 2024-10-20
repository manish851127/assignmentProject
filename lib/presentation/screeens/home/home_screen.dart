import 'package:assignment_project/presentation/screeens/home/category_screen.dart';
import 'package:assignment_project/presentation/screeens/home/profile_screen.dart';
import 'package:assignment_project/presentation/screeens/home/user_feed_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

    static const String routeName="home";

}

class _HomeScreenState extends State<HomeScreen> {
   int currentIndex=0;

  final List<Widget> list =[
    const UserFeedScreen(),
    const CategoryScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          setState(() {
            currentIndex=value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Category'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: 'Profile'),

        ]
        ),
        body: list[currentIndex],
    );
  }
}