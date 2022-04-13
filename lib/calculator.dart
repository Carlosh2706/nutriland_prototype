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
    'Grams',
    'Kilograms',
    'Pounds',
    'Ounces',
  ];

  final Map<String, int> measuresMap = {
    'Grams': 0,
    'Kilograms': 1,
    'Pounds': 2,
    'Ounces': 3,
  };

  dynamic formulas = {
    '0': [1, 0.0001, 0, 0, 0.00220, 0.03],
    '1': [1000, 1, 0, 0, 2.2046, 35.274],
    '2': [453.592, 0.4535, 0, 0, 1, 16],
    '3': [28.3495, 0.02834, 3.28084, 0, 0.1]
  };

  void convert(double value, String from, String to) {
    int? nFrom = measuresMap[from];
    int? nTo = measuresMap[to];
    var multi = formulas[nFrom.toString()][nTo];
    var result = value * multi;

    resultMessage = result.toString();

    setState(() {
      resultMessage = resultMessage;
    });
  }

  late double userInput;
  late String _startMeasure = 'Pounds';
  late String _convertMeasure = 'Pounds';
  late String resultMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
                decoration:
                    BoxDecoration(border: Border.all(), color: Colors.white),
                width: MediaQuery.of(context).size.width - 10,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: (text) {
                                var input = double.tryParse(text);
                                if (input != null) {
                                  setState(() {
                                    userInput = input;
                                    convert(userInput, _startMeasure, _convertMeasure);
                                  });
                                }
                              },
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              decoration: InputDecoration(
                                hintText: "Enter amount",
                              ),
                            ),
                          ),
                        ),
                        Expanded(flex: 1, child: Center(child: Text("="))),
                        Expanded(
                          flex: 2,
                          child: Text(
                              (resultMessage == null) ? '' : resultMessage),
                        )
                      ],
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
            ],
          ),
        ),
      ),
    );
  }
}
