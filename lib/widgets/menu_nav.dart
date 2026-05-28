import 'package:flutter/material.dart';
import 'package:stockfull/services/index.dart'; 

class MenuNav extends StatelessWidget {
  const MenuNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: menubar,
        onTap: (value) {
          menubar = value; 
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => telas[value]),
          );
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.green[900],
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.widgets), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.auto_graph_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.local_shipping), label: ''),
        ],
    );
  }
}