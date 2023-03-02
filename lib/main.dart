import 'package:advance_counter/screen/provider/counter_provider.dart';
import 'package:advance_counter/screen/view/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => counter_Provider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes:
        {
          '/' : (context) => counterScreen(),
        },
      ),
    ),
  );
}