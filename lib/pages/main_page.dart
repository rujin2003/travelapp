import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel/pages/bar_item_page.dart';
import 'package:travel/pages/homepage.dart';
import 'package:travel/pages/profilePage.dart';
import 'package:travel/pages/searchpage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = const [
    Homepage(),
    BarItemPage(),SearchPaage(),ProfilePage()];
    int currentIndex = 0;
    
    void onitemTap(int index){
          setState(() {
            currentIndex = index;
          });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onitemTap,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        currentIndex: currentIndex,
        items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.apps),),
           BottomNavigationBarItem(
           label: "bar_item",
          icon: Icon(Icons.bar_chart),),
           BottomNavigationBarItem(
            label: "label",
          icon: Icon(Icons.search),),
           BottomNavigationBarItem(
            label: "profile",
          icon: Icon(Icons.person),)
      ]),
      body: pages[currentIndex],
    );
  }
}