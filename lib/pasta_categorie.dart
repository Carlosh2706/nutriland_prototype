import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutriland_prototype/home_screen.dart';
import 'package:nutriland_prototype/lasagna_recipe.dart';
import 'package:nutriland_prototype/navigation_drawer_widget.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

class PastaPage extends StatelessWidget {

  var screenWidth;
  var screenHeight;

  List<Map> categories = [

    {'name': 'Drinks', 'imagePath': 'assets/drinks.jpg'},
    {'name': 'Salads', 'imagePath': 'assets/salads.jpg'},
    {'name': 'Pastas', 'imagePath': 'assets/alfredo.jpg'},
    {'name': 'Sauces', 'imagePath': 'assets/sauces.jpg'},
    {'name': 'Desserts', 'imagePath': 'assets/desserts.jpg'},
    {'name': 'Basic', 'imagePath': 'assets/sandwich.jpg'},

  ];

  @override
  Widget build(BuildContext context) {

    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[200],
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/alfredo.jpg",
                    ),
                    fit: BoxFit.cover,
                  )
              ),
              child: Column(
                children: [
                  Text(
                    "Pastas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.15,
                      fontFamily: 'Anton',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Center(
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
                  SizedBox(height: 15,)
                ],
              )
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
            //Categories Carousel
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index){
                  return Container(
                      width: 80,
                      height: 90,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
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
              padding: const EdgeInsets.all(15.0),
              child: Text("Favourites", style: TextStyle(
                  fontSize: 25,
                  color: Colors.black54,
                  fontFamily: 'Lato'
              ),),
            ),
            GestureDetector(
                onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => LasagnaRecipe()));},
                child: FavoriteTemplate("Lasagna","assets/lasagna.jpg",4,"1:30Hrs")),
            FavoriteTemplate("Pasta Alfredo","assets/alfredo.jpg",3.5,"1:00Hrs"),
            const Divider(
              height: 10,
              thickness: 3,
            ),
            RecipeTemplate("Mac&Cheese","assets/macandcheese.jpg","Pastas",2,"45Mins"),
            RecipeTemplate("Rigatoni","assets/rigatoni.jpg","Pastas",3,"50Mins"),
            RecipeTemplate("Ravioli with lemon zest","assets/ravioli.jpg","Pastas",4,"1:00Hr"),
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

  Widget FavoriteTemplate(String name, String imagePath, double rating, String duration) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              imagePath.toString(),
              width: screenWidth,
              height: screenHeight * 0.3,
              fit: BoxFit.fill,
            ),
          ),
          // SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
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
                    ),
                    SizedBox(width: 15,),
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



