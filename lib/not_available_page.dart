import 'package:flutter/material.dart';
import 'package:nutriland_prototype/home_screen.dart';
import 'package:nutriland_prototype/navigation_drawer_widget.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

class NotAvailablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        title: GestureDetector(
          onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));},
          child: Text('NutrilandHn', style: TextStyle(
            color: Colors.black87,
            fontFamily: 'GreatVibes',
            fontSize: 40,
          ),),
        ),
        backgroundColor: const Color.fromRGBO(255, 220, 186, 1),
        elevation: 10,
      ),
      body: Center(child: Text("Page not Available", style: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.bold,
        fontFamily: 'Lato',
      ),)),
    );
  }
}
