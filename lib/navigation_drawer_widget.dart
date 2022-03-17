import 'package:flutter/material.dart';
import 'package:nutriland_prototype/calculator.dart';
import 'package:nutriland_prototype/home_screen.dart';
import 'package:nutriland_prototype/not_available_page.dart';
import 'package:nutriland_prototype/pasta_categorie.dart';

// ignore_for_file: prefer_const_constructors
class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(255, 220, 186, 1),
        child: ListView(
          padding: padding,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 220, 186, 1),
                elevation: 0,
              ),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen())),
              child: Container(
                padding: padding.add(EdgeInsets.symmetric(vertical: 20)),
                child: Image.asset('assets/NutrilandHn.png'),
              ),
            ),
            Divider(
              color: Colors.black87,
            ),
            buildMenuItem(
              text: 'Drinks',
              icon: Icons.local_cafe_rounded,
              onClicked: () => selectedItem(context, 1),
            ),
            buildMenuItem(
              text: 'Salads',
              icon: Icons.graphic_eq,
              onClicked: () => selectedItem(context, 1),
            ),
            buildMenuItem(
              text: 'Pastas',
              icon: Icons.brunch_dining,
              onClicked: () => selectedItem(context, 0),
            ),
            buildMenuItem(
              text: 'Sauces',
              icon: Icons.liquor,
              onClicked: () => selectedItem(context, 1),
            ),
            buildMenuItem(
              text: 'Desserts',
              icon: Icons.cake,
              onClicked: () => selectedItem(context, 1),
            ),
            buildMenuItem(
              text: 'Basic',
              icon: Icons.fastfood,
              onClicked: () => selectedItem(context, 1),
            ),
            Divider(
              color: Colors.black87,
            ),
            buildMenuItem(
              text: 'Calculator',
              icon: Icons.calculate_sharp,
              onClicked: () => selectedItem(context, 6),
            ),
            buildMenuItem(
              text: 'Notepad',
              icon: Icons.note,
              onClicked: () => selectedItem(context, 1),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black87;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PastaPage()));
        break;
      case 6:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Calculator()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NotAvailablePage()));
        break;

    }
  }
}
