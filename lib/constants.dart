import 'package:flutter/material.dart';

const kHomeTitleStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

const kSearchTextFeild = InputDecoration(
  hintStyle: TextStyle(
    color: Color.fromARGB(255, 232, 231, 231),
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(19.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(19.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(19.0)),
  ),
);
