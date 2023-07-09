import 'package:flutter/material.dart';
import 'package:flutter_application_1/models&fonts/fonts.dart';
import 'package:flutter_application_1/view/horoscope_page.dart';

class HoroscopeCard extends StatefulWidget {

String sign ;
String day ;
HoroscopeCard({required this.sign,required this.day});

  @override
  State<HoroscopeCard> createState() => _HoroscopeCardState(sign: sign,day: day);
}

class _HoroscopeCardState extends State<HoroscopeCard> {
  
String sign ;
String day ;
  _HoroscopeCardState({required this.sign,required this.day});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
         onTap: (){
            setState(() {
              Navigator.push(context,MaterialPageRoute(builder: (context) => HoroscopePage(sign: sign, day: day),),);
            });
            
          },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Color(0xFF2C2C2C)),
          width: 220,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Expanded(
              
                    child: Center(
                      child: Text(
                        widget.sign,
                        style: ktitlelStyles.copyWith(fontSize: 50),
                 
                  ),
                    ),
                ),
 Image.asset('assets/images/${widget.sign}.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
