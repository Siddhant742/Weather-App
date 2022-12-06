import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
    fontFamily: 'Spartan MB', fontSize: 57.0, color: Color(0xFFFCE5C3));

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
  color: Color(0xFFF3D19F),
);

const kConditionTextStyle = TextStyle(
  fontSize: 58.0,
);

const kTextFieldStyle = InputDecoration(
  hintText: 'Enter city name',
  hintStyle: TextStyle(
    color: Colors.grey,
    fontSize: 18,
  ),
  icon: Icon(
    Icons.location_city_outlined,
    size: 50,
    color: Color(0xFFFFFFFF),
  ),
  filled: true,
  fillColor: Colors.white,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide.none,
  ),
);
