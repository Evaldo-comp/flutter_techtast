import 'dart:convert';
import 'package:flutter/material.dart' show ChangeNotifier;
import 'package:flutter/services.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantData extends ChangeNotifier {
  List<Restaurant> listRestaurant = [];

  Future<void> getRestaurants() async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> restaurants = data['restaurants'];
    for (var restaurant in restaurants) {
      listRestaurant.add(Restaurant.fromMap(restaurant));
    }
  }
}
