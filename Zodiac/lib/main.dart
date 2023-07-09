import 'package:flutter/material.dart';
import 'package:flutter_application_1/compenents/birtday.dart';
import 'package:flutter_application_1/view/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) =>Birthday(),
    child: MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF151518)),
     home: HomePage(),
    ),
  ));
}
