import 'package:flutter/material.dart';

class ListItemsModel {
  String image;
  String
      name; // Follow Dart's naming conventions (camelCase for variable names)
  String message;
  String? time;
  String? unreaded;
  Widget? greeenicon;

  // Constructor
  ListItemsModel({
    this.time,
    required this.image,
    required this.name,
    required this.message,
    this.unreaded,
    this.greeenicon,
  });
}
