import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
String title;
String Info;
Function page;
 InfoCard({required this.title,required this.Info,required this.page });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
              onTap: (){
               page();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.date_range,color: Color.fromARGB(255, 243, 134, 37) ,size: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("$title",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 243, 134, 37),),),
                        Text("$Info",style: TextStyle(fontSize: 15,color: Color(0xFFDCBD4A) ,))
                      ],
                    ),
                     Icon(Icons.arrow_forward_rounded,color: Color.fromARGB(255, 243, 134, 37) ,size: 28,),
                  ],
                ),
              ),
            );
  }
}