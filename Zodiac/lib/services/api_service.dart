import 'dart:convert';
import 'package:flutter_application_1/models&fonts/horoscope_model.dart';
import 'package:http/http.dart' as http;

class apiService{
Future<HoroscopeModel?> fetchHoroscope(String sign,String day) async{
  sign=="pisces"?"piesces":sign;
 var res= await http.post(Uri.parse('https://aztro.sameerkumar.website/?sign=$sign&day=$day'));
 
 if (res.statusCode==200){
   print(res.statusCode.toString());

 HoroscopeModel  jsonBody=HoroscopeModel.fromJson(jsonDecode(res.body));
  jsonBody.name=sign;
 return jsonBody;
 }
} 
}
