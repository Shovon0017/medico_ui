

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medico/view/screen/home/home.dart';
class HomeNavigationBar extends StatefulWidget {
  const HomeNavigationBar({super.key});

  @override
  State<HomeNavigationBar> createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {
  int index=0;
  final screens=[

    Home()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[index],
      bottomNavigationBar: NavigationBar(backgroundColor: Colors.blue,

        selectedIndex:index ,
        onDestinationSelected:(index)=>setState(()=>this.index=index),
        destinations: const [
          NavigationDestination(icon:Icon(Icons.category_outlined,size: 40), label: "category"),
          NavigationDestination(icon:Icon(Icons.search_outlined,size: 40), label: "Search"),
          NavigationDestination(icon:Icon(Icons.home,size: 40), label: "Home"),
        ],
      ),
    );
  }
}
