
String? datePicker(DateTime dateTime) {
   String? horoscopeSign;
 
   
if(dateTime.month==1&&dateTime.day >=20||dateTime.month==2&&dateTime.day <=18){
horoscopeSign="aquarius";
}
else if(dateTime.month==2&&dateTime.day >=19||dateTime.month==3&&dateTime.day <=20 ){
horoscopeSign="pisces";
}
else if(dateTime.month==3&&dateTime.day >=21||dateTime.month==4&&dateTime.day <=19 ){
horoscopeSign="aries";
}
else if(dateTime.month==4&&dateTime.day >=2||dateTime.month==5&&dateTime.day <=20 ){
horoscopeSign="taurus";
}
else if(dateTime.month==5&&dateTime.day >=21||dateTime.month==6&&dateTime.day <=20 ){
horoscopeSign="gemini";
}
else if(dateTime.month==6&&dateTime.day >=21||dateTime.month==7&&dateTime.day <=22 ){
horoscopeSign="cancer";
}
else if(dateTime.month==7&&dateTime.day >=23||dateTime.month==8&&dateTime.day <=22 ){
horoscopeSign="leo";
}
else if(dateTime.month==8&&dateTime.day >=23||dateTime.month==9&&dateTime.day <=22 ){
horoscopeSign="virgo";
}
else if(dateTime.month==9&&dateTime.day >=23||dateTime.month==10&&dateTime.day <=22 ){
horoscopeSign="libra";
}
else if(dateTime.month==10&&dateTime.day >=23||dateTime.month==11&&dateTime.day <=21 ){
horoscopeSign="scorpio";
}
else if(dateTime.month==11&&dateTime.day >=22||dateTime.month==12&&dateTime.day <=21 ){
horoscopeSign="sagittarius";
}
else if(dateTime.month==12&&dateTime.day >=22||dateTime.month==1&&dateTime.day <=19 ){
horoscopeSign="capricorn";
}

      return horoscopeSign;
      
}
