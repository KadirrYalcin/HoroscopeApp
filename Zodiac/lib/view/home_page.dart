import 'package:flutter/material.dart';
import 'package:flutter_application_1/compenents/birtday.dart';
import 'package:flutter_application_1/compenents/horoscope_card.dart';
import 'package:flutter_application_1/compenents/information_cards.dart';
import 'package:flutter_application_1/models&fonts/fonts.dart';
import 'package:flutter_application_1/view/zodiac_dates.dart';
import 'package:provider/provider.dart';

import 'horoscope_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> signs=["aries",
    "taurus",
     "gemini",
     "cancer",
     "leo",
     "virgo",
      "scorpio",
      "sagittarius",
       "capricorn", 
       "aquarius",
        "pisces",
        "libra",
    ];
    final Birthday yourBirthday = Provider.of<Birthday>(context);
  yourBirthday.loadbirthdayfromSharedpref();
    void _showDatePicker() {
      showDatePicker(
              context: context,
              initialDate:yourBirthday.initialDate ,
              firstDate: DateTime(1900),
              lastDate: DateTime(2025))
          .then((value) {
        setState(() {
          Provider.of<Birthday>(context, listen: false).newBirthday(value!);
    yourBirthday.initialDate=value;
        });
      });
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "DailyFortune",
                style: klabelStyles,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Find out secrets about your future life",
                style: ktextStyles,
              ),
            ),
            Container(
              height: 400,
              child: ListView.builder(
                itemCount: 12,
                  scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                   return HoroscopeCard(sign: signs[index], day: "today");
                  }
             
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("And more",style: klabelStyles,),
            ),
       
          InfoCard(title: "Zodiac date range", Info: "Learn the all horoscopes date range..." ,page: (){ Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> ZodiacPage()));}),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                if (yourBirthday.horoscopeSign == null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.grey,
                    content: Text("before save your birthday"),
                  ));
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HoroscopePage(
                              sign: yourBirthday.horoscopeSign!, day: "today")));
                }
              },
            ),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
              color: Colors.green,
            ),
            IconButton(
              icon: Icon(Icons.date_range),
              onPressed: () {
                setState(() {
                  _showDatePicker();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
