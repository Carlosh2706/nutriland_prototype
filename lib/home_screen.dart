import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutriland_prototype/navigation_drawer_widget.dart';
import 'package:nutriland_prototype/not_available_page.dart';
import 'package:nutriland_prototype/pasta_categorie.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

class HomeScreen extends StatelessWidget {

  List<Map> categories = [

    {'name': 'Drinks', 'imagePath': 'assets/drinks.jpg', 'nextActivity': NotAvailablePage()},
    {'name': 'Salads', 'imagePath': 'assets/salads.jpg', 'nextActivity': NotAvailablePage()},
    {'name': 'Pastas', 'imagePath': 'assets/alfredo.jpg', 'nextActivity': PastaPage()},
    {'name': 'Sauces', 'imagePath': 'assets/sauces.jpg', 'nextActivity': NotAvailablePage()},
    {'name': 'Desserts', 'imagePath': 'assets/desserts.jpg', 'nextActivity': NotAvailablePage()},
    {'name': 'Basic', 'imagePath': 'assets/sandwich.jpg', 'nextActivity': NotAvailablePage()},

  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[200],
      endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('NutrilandHn', style: TextStyle(
            color: Colors.black87,
            fontFamily: 'GreatVibes',
            fontSize: 40,
        ),),
        backgroundColor: const Color.fromRGBO(255, 220, 186, 1),
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/toast.jpg",
                          ),
                          fit: BoxFit.cover,
                        )
                    ),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 30,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.search),
                              SizedBox(width: 10,),
                              Text("Search a recipe here"),
                            ],
                          ),
                        ),
                      ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Categories", style: TextStyle(
                      fontSize: 25,
                      color: Colors.black54,
                      fontFamily: 'Lato'
                  ),),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index){
                        return GestureDetector(
                          onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => categories[index]['nextActivity']));},
                          child: Container(
                            width: 80,
                            height: 90,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                image: AssetImage(categories[index]['imagePath'],
                              ),
                                fit: BoxFit.fill,
                              )
                            ),
                            child: Text(
                              categories[index]['name'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Anton',
                              ),
                              textAlign: TextAlign.center,
                            )
                          ),
                        );
                    },
                  ),
                ),
                SizedBox(height: 10,),
                const Divider(
                  height: 10,
                  thickness: 3,
                ),
                Padding(
                    padding: EdgeInsets.all(5),
                  child: CarouselSlider(
                    options: CarouselOptions(height: 160.0, autoPlay: true),
                    items: [
                      'assets/steak.jpg',
                      'assets/burger.jpg',
                      'assets/pizza.jpg',
                    ].map((i) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: GestureDetector(
                          child: Image.asset(i, fit:  BoxFit.fill,),
                          onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotAvailablePage()));},
                        ),
                      );
                    }).toList(),
                  ),

                ),
                const Divider(
                  height: 10,
                  thickness: 3,
                ),
                GestureDetector(
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotAvailablePage()));},
                    child: RecipeTemplate("Rigatoni","assets/rigatoni.jpg","Pastas",3,"50Mins")),
                GestureDetector(
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotAvailablePage()));},
                    child: RecipeTemplate("Cheesecake","assets/cheesecake.jpg","Desserts",4,"2:00Hrs")),
                GestureDetector(
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotAvailablePage()));},
                    child: RecipeTemplate("Burger","assets/burger.jpg","Basics",2,"45Mins")),
                SizedBox(height: 15,),
                const Divider(
                  height: 0,
                  thickness: 3,
                ),
                Container(
                  color: Color.fromRGBO(255, 220, 186, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(
                        children: [
                          Text("Follow Us", style: TextStyle(
                            fontSize: 25,
                          ),),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Icon(FontAwesomeIcons.facebookSquare, size: 35,),
                              Icon(FontAwesomeIcons.instagram, size: 35,),
                              Icon(FontAwesomeIcons.twitterSquare, size: 35,),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
      ),
      );
  }

  Widget RecipeTemplate(String name, String imagePath, String category, double rating, String duration) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(imagePath.toString(), width: 120, height: 120, fit: BoxFit.fill,),
          ),
          // SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name, style:
                  TextStyle(
                      fontSize: 25,
                      fontFamily: 'Lato',
                    // fontStyle: FontStyle.italic,
                ),
               ),
                Text(category, style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                  fontFamily: 'Lato'
                ),),
                Row(
                  children: [
                    Text("Rating ", style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontFamily: 'Lato'
                    ),),
                    RatingBar.builder(
                        initialRating: rating,
                        minRating: 1,
                        itemSize: 17,
                        itemBuilder: (context, _) =>  Icon(Icons.star, color: Color.fromRGBO(255, 220, 186, 1),),
                        onRatingUpdate: (rating) {},
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.access_time, color: Color.fromRGBO(255, 220, 186, 1), size: 23,),
                    SizedBox(width: 5,),
                    Text(duration, style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontFamily: 'Lato'
                    ),),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


