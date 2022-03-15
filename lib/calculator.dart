import 'package:flutter/material.dart';
import 'package:nutriland_prototype/navigation_drawer_widget.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  void initState() {
    userInput = 0;
    super.initState();
  }

  final List<String> measures = [
    'Pounds',
    'Grams',
    'Kilograms',
  ];

  late double userInput;
  late String _startMeasure = 'Pounds';
  late String _convertMeasure = 'Pounds';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'NutrilandHn',
          style: TextStyle(
            color: Colors.black87,
            fontFamily: 'GreatVibes',
            fontSize: 40,
          ),
        ),
        backgroundColor: const Color.fromRGBO(255, 220, 186, 1),
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                  "Conversion Calculator",
                  style: TextStyle(fontSize: 30, fontFamily: 'Lato'),
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                width: MediaQuery.of(context).size.width - 10,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 220, 186, 1),
                      ),
                      child: DropdownButton(
                        hint: Text("Weight"),
                        isExpanded: true,
                        dropdownColor: Color.fromRGBO(255, 220, 186, 1),
                        items: measures.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                    //Input field
                    TextField(
                      onChanged: (text) {
                        var input = double.tryParse(text);
                        if (input != null) {
                          setState(() {
                            userInput = input;
                          });
                        }
                      },
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
                          hintText: "Convert",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 220, 186, 1),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: _startMeasure,
                                alignment: AlignmentDirectional.center,
                                elevation: 0,
                                hint: Text(
                                  "Weight",
                                  textAlign: TextAlign.center,
                                ),
                                dropdownColor: Color.fromRGBO(255, 220, 186, 1),
                                items: measures.map((String value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Center(child: Text(value)),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _startMeasure = value.toString();
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 220, 186, 1),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: _convertMeasure,
                                elevation: 0,
                                hint: Text("Weight"),
                                dropdownColor: Color.fromRGBO(255, 220, 186, 1),
                                items: measures.map((String value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _convertMeasure = value.toString();
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all( Color.fromRGBO(255, 220, 186, 1),)
                ),
                onPressed: () => {},
                child: Container(

                  alignment: AlignmentDirectional.center,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 220, 186, 1),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Text(
                    "Convert",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
