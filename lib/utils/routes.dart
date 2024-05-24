import 'package:flutter/material.dart';
import '../screen/home/view/home_screen.dart';
import '../screen/shlok/view/shlok_screen.dart';

Map<String,WidgetBuilder> app_routes={
  '/': (context)=> HomeScreen(),
  'shlok': (context)=> shlokScreen(),
};