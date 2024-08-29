import 'package:flutterfashionfluxapp/Wishlist.dart';
import 'package:flutterfashionfluxapp/categories.dart';
import 'package:flutterfashionfluxapp/dashboard.dart';
import 'package:flutterfashionfluxapp/profile.dart';
import 'package:flutterfashionfluxapp/shoppinglist.dart';
import 'package:flutter/material.dart';

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({Key? key}) : super(key: key);

  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  int _selectedIndex=0;
  final List<Widget> _pages = [
    dashboard(),
    Categories(),
    Shoppinglist(),
    Wishlist(),
    Profile()


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex:  _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label:"",),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard,color: Colors.white,),label:""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.white,),label:""),
          BottomNavigationBarItem(icon: Icon(Icons.checklist ,color: Colors.white,),label:""),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white,),label:""),


        ],

      ),
    );
  }
}
