
import 'package:flutter/material.dart';
import 'package:flutter_application_1/compenents/day_bar.dart';
import 'package:flutter_application_1/models&fonts/fonts.dart';

import '../models&fonts/horoscope_model.dart';
import '../services/api_service.dart';

class HoroscopePage extends StatefulWidget {
  String sign;
  String day;
  HoroscopePage({required this.sign, required this.day});
  @override
  State<HoroscopePage> createState() => _HoroscopePageState();
}

class _HoroscopePageState extends State<HoroscopePage> {
  
  bool isLoading=true;
  apiService _apiService = apiService();
  HoroscopeModel? horoscope = HoroscopeModel();
  @override
  void initState() {
    super.initState();
    _apiService
        .fetchHoroscope(
           widget.sign, widget.day)
        .then((value) {
      setState(() {
        horoscope = value;
        isLoading=false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(96, 77, 70, 70),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/${widget.sign}.jpg",
              color: Colors.black38,
              colorBlendMode: BlendMode.colorBurn,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(96, 77, 70, 70),
                              blurRadius: 80.0,
                              blurStyle: BlurStyle.inner,
                              offset: Offset(1, 1),
                              spreadRadius: 4.0)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(96, 77, 70, 70),
                      ),
                      child: Center(
                          child: Text(
                        "${widget.sign}",
                        style: ktitlelStyles,
                      ))),
                  SizedBox(
                    height: 6.0,
                  ),isLoading?Expanded(child: Center(child: CircularProgressIndicator(color:  Color.fromARGB(255, 243, 134, 37),))):
                  Column(
                    
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                  Text(
                    "Comparability: ${horoscope?.compatibility}",
                    style: ktextStyles,
                  ),
                  Text(
                    "mood: ${horoscope?.mood}",
                    style: ktextStyles,
                  ),
                  Text(
                    "Date range: ${horoscope?.dateRange}",
                    style: ktextStyles,
                  ),
                  Text(
                    "Color: ${horoscope?.color}",
                    style: ktextStyles,
                  ),
                  Text(
                    "Lucky numeber: ${horoscope?.luckyNumber}",
                    style: ktextStyles,
                  ),
                  Text(
                    "Lucy time: ${horoscope?.luckyTime}",
                    style: ktextStyles,
                  ),
                  Divider(color: Color(0xFFBBBBBB), height: 15, thickness: 1.0),
                  Text("daily description: ", style: kdescriptionStyle),
                  Text("${horoscope?.description}", style: kdescriptionStyle),
                  ],),
                ],
              ),
            ),
            Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 20),
                child: Daybar(sign: widget.sign, day: widget.day)),
          ],
        ),
      ),
      // bottomNavigationBar: Daybar(sign: widget.sign, day: widget.day),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              
              color: Colors.green,
              icon: Icon(Icons.menu),
              onPressed: () {
              },
            ),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.date_range),
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}