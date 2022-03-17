import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutriland_prototype/home_screen.dart';
import 'package:nutriland_prototype/navigation_drawer_widget.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

class LasagnaRecipe extends StatefulWidget {
  @override
  _LasagnaRecipeState createState() => _LasagnaRecipeState();
}

class _LasagnaRecipeState extends State<LasagnaRecipe> {
  bool checkBoxValue1 = false;
  bool checkBoxValue2 = false;
  bool checkBoxValue3 = false;
  bool checkBoxValue4 = false;
  bool checkBoxValue5 = false;
  bool checkBoxValue6 = false;
  bool checkBoxValue7 = false;
  bool checkBoxValue8 = false;
  bool checkBoxValue9 = false;
  bool checkBoxValue10 = false;

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lasagna",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      itemSize: 17,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 220, 186, 1),
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    Icon(
                      Icons.access_time,
                      color: Color.fromRGBO(255, 220, 186, 1),
                      size: 23,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "duration",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          fontFamily: 'Lato'),
                    ),
                    Icon(
                      Icons.pie_chart,
                      color: Color.fromRGBO(255, 220, 186, 1),
                      size: 23,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 0,
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Image.asset(
                  "assets/lasagna.jpg",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.fill,
                ),
              ),
              const Divider(
                height: 0,
                thickness: 3,
              ),
              //Ingredient card
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                child: Card(
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Text(
                          "Ingredients:",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Checkbox(
                                value: checkBoxValue1,
                                onChanged: (value) async =>
                                    setState(() => checkBoxValue1 = value!),
                              ),
                              Text("9 lasagna noodles"),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Checkbox(
                                value: checkBoxValue2,
                                onChanged: (value) async =>
                                    setState(() => checkBoxValue2 = value!),
                              ),
                              Text("4 1/2 cups meat sauce"),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Checkbox(
                                value: checkBoxValue3,
                                onChanged: (value) async =>
                                    setState(() => checkBoxValue3 = value!),
                              ),
                              Text("475 grams ricotta"),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Checkbox(
                                value: checkBoxValue4,
                                onChanged: (value) async =>
                                    setState(() => checkBoxValue4 = value!),
                              ),
                              Text("3 cups mozzarella"),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Checkbox(
                                value: checkBoxValue5,
                                onChanged: (value) async =>
                                    setState(() => checkBoxValue5 = value!),
                              ),
                              Text("1 cup parmessan"),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Checkbox(
                                value: checkBoxValue6,
                                onChanged: (value) async =>
                                    setState(() => checkBoxValue6 = value!),
                              ),
                              Text("3 tablespoons butter"),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Checkbox(
                                value: checkBoxValue7,
                                onChanged: (value) async =>
                                    setState(() => checkBoxValue7 = value!),
                              ),
                              Text("3 tablespoons flour"),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Checkbox(
                                value: checkBoxValue8,
                                onChanged: (value) async =>
                                    setState(() => checkBoxValue8 = value!),
                              ),
                              Text("2 cups milk"),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Checkbox(
                                value: checkBoxValue9,
                                onChanged: (value) async =>
                                    setState(() => checkBoxValue9 = value!),
                              ),
                              Text("1/4 teaspoons salt"),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              Checkbox(
                                value: checkBoxValue10,
                                onChanged: (value) async =>
                                    setState(() => checkBoxValue10 = value!),
                              ),
                              Text("0.12 teaspoons nutmeg"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //Recipe card
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                child: Card(
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Text(
                          "Instructions:",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.checkCircle,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Step 1",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Preheat oven to 400F."),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.checkCircle,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Step 2",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Melt butter in a medium saucepan over medium-low. Whisk in flour until mixture forms a paste,about 2 min. Gradually whisk in milk. Increase heatto medium. Cook, stirring constantly and scrapingthe bottom of the pot, until sauce thickens, 7 to 8min. Stir in salt and nutmeg. "),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.checkCircle,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Step 3",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Spread 1/2 cup béchamel in the bottom of a 9 × 13-in. baking dish. Top with 3 noodles. Spread 1 1/2cups Bolognese meat sauce evenly over noodles.Drizzle with 1/2 cup béchamel. Top with 3 morenoodles. Spread ricotta evenly over noodles. Seasonwith fresh pepper. Spread another 1 1/2 cups meatsauce evenly over ricotta. Drizzle with 1/2 cupbéchamel. Top with remaining 3 noodles. Spreadremaining 1 1/2 cups meat sauce evenly over noodles.Drizzle with remaining 1/2 cup béchamel. Sprinkleevenly with mozzarella. Cover pan with foil and bakein centre of oven, 45 min. Remove foil, then sprinklewith parmesan. Bake until golden and bubbly, about10 more min. Let lasagna stand 10 min before serving"),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Text("Popular with this recipe", style: TextStyle(
                    fontSize: 25,
                    color: Colors.black54,
                    fontFamily: 'Lato'
                ),),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey),),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset("assets/lasagna.jpg", height: 120, width: 120, fit: BoxFit.fill),
                        Text("BBQ Wings", style: TextStyle(fontSize: 20),),
                        Text("Basics", style: TextStyle(fontSize: 15),),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          itemSize: 17,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Color.fromRGBO(255, 220, 186, 1),
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey),),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset("assets/lasagna.jpg", height: 120, width: 120, fit: BoxFit.fill),
                        Text("BBQ Wings", style: TextStyle(fontSize: 20),),
                        Text("Basics", style: TextStyle(fontSize: 15),),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          itemSize: 17,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Color.fromRGBO(255, 220, 186, 1),
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey),),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset("assets/lasagna.jpg", height: 120, width: 120, fit: BoxFit.fill),
                        Text("BBQ Wings", style: TextStyle(fontSize: 20),),
                        Text("Basics", style: TextStyle(fontSize: 15),),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          itemSize: 17,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Color.fromRGBO(255, 220, 186, 1),
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              const Divider(
                height: 0,
                thickness: 3,
              ),
              //Footer
              Container(
                color: Color.fromRGBO(255, 220, 186, 1),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "Follow Us",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              FontAwesomeIcons.facebookSquare,
                              size: 35,
                            ),
                            Icon(
                              FontAwesomeIcons.instagram,
                              size: 35,
                            ),
                            Icon(
                              FontAwesomeIcons.twitterSquare,
                              size: 35,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
