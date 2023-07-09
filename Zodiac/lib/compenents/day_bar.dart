
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models&fonts/fonts.dart';
import '../view/horoscope_page.dart';

class Daybar extends StatelessWidget {
String sign;
String day;

  Daybar({required this.sign,required this.day});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
              onPressed: () {
                if (day != "yesterday") {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HoroscopePage(
                              sign: sign, day: day)));
                  day = "yesterday";
                }
              },
              child: Text(
                "yesteday",
                style: day == "yesterday"?kdescriptionStyle:ktextStyles,
              )),
          OutlinedButton(
            onPressed: () {
                  if (day != "today"){
                    
                day = "today";
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            HoroscopePage(sign: sign, day: day)));
                  }},
            child: Text(
              "today",
              style:  day == "today"?kdescriptionStyle:ktextStyles,
            ),
          ),
          OutlinedButton(
              onPressed: () {
                  if (day != "tomorrow"){
                    
                day = "tomorrow";
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            HoroscopePage(sign: sign, day: day)));
                  }
              },
              child: Text(
                "tomorrow",
                style:  day == "tomorrow"?kdescriptionStyle:ktextStyles,
              )),
          
        ],
      );
  }
}