
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/compenents/date_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Birthday extends ChangeNotifier {
 late SharedPreferences _sharedPref;
  DateTime birthday=DateTime.now();
   String? horoscopeSign;
    DateTime initialDate=DateTime(2000);

  void newBirthday(DateTime dateTime){
birthday=dateTime;
saveBirthdaytoSharedPref(birthday);
horoscopeSign =datePicker(birthday);
notifyListeners();
  }
  Future<void> createSharedPrefObject()async{
    _sharedPref=await SharedPreferences.getInstance();
  }
  void saveBirthdaytoSharedPref(DateTime dateTime){
    _sharedPref.setString("birtday",dateTime.toString());
  }

  void loadbirthdayfromSharedpref()async{
   await createSharedPrefObject();
   print("created");
   if(_sharedPref.getString("birtday")==null){
print("null");
  DateTime birthday=DateTime.now();
   }else{
    print("object");
      String? date=_sharedPref.getString("birtday");
    birthday=DateTime.parse(date!);
horoscopeSign =datePicker(birthday);
    print(birthday);
   }
 
  }
}