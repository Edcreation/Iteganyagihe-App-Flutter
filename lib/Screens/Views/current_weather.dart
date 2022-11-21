import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/background.jpg"),fit: BoxFit.cover,),
        
      ),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Color.fromARGB(255, 2, 106, 171),
          size: 69.0,
        ),
        Text("$temp",style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),backgroundColor: Color.fromARGB(106, 0, 0, 0), fontSize: 45),),
        Text("$location",style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 18,fontWeight: FontWeight.bold)),
      ],
    ),
    )
  );
}
