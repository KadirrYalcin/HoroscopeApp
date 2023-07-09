
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models&fonts/fonts.dart';

class ZodiacPage extends StatelessWidget {
  const ZodiacPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Zodiac date ranges",
                  style: ktitlelStyles.copyWith(fontSize: 50),
                ),
              ),
              Divider(
                color: Colors.white,
                height: 20.0,
                thickness: 1,
              ),
              Column(
                children: [
                  Text(
                    "Aries—March 21-April 19",
                    style: ktextStyles,
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Taurus—April 20-May 20.",
                    style: ktextStyles,
                  ),  SizedBox(height: 5,),
                  Text(
                    "Gemini—May 21-June 20.",
                    style: ktextStyles,
                  ),  SizedBox(height: 5,),
                  Text(
                    "Cancer—June 21-July 22",
                    style: ktextStyles,
                  ),  SizedBox(height: 5,),
                  Text(
                    "Leo—July 23-August 22",
                    style: ktextStyles,
                  ),  SizedBox(height: 5,),
                  Text(
                    "Virgo—August 23-September 22",
                    style: ktextStyles,
                  ),  SizedBox(height: 5,),
                  Text(
                    "Libra—September 23-October 22",
                    style: ktextStyles,
                  ),  SizedBox(height: 5,),
                  Text(
                    "Scorpio—October 23-November 21",
                    style: ktextStyles,
                  ),  SizedBox(height: 5,),
                  Text(
                    "Sagittarius—November 22-December 21",
                    style: ktextStyles,
                  ),  SizedBox(height: 5,),
                  Text(
                    "Capricorn—December 22-January 19",
                    style: ktextStyles,
                  ),  SizedBox(height: 5,),
                  Text(
                    "Aquarius—Jan 20-Feb 18",
                    style: ktextStyles,
                  ),  SizedBox(height: 5,),
                  Text(
                    "Pisces—Feb 19-March 20",
                    style: ktextStyles,
                  ),
                ],
              ),
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

                },
              ),
              IconButton(
                icon: Icon(Icons.home,
                  color: Colors.green,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.date_range,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}