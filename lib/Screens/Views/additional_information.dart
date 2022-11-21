import 'package:flutter/material.dart';

TextStyle titles = const TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 18,
    fontWeight: FontWeight.w400,

  );

Widget additionalInformation(
    String wind, String humidity, String pressure, String feels_like) {
  return Container(decoration: BoxDecoration(
      color: const Color.fromARGB(255, 240, 238, 238),
      
      borderRadius: BorderRadius.circular(15),
    ),
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    margin: const EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Wind",style: titles,),
                const SizedBox(height: 18.0,),
                Text("Pressure",style: titles,),
                const SizedBox(height: 18.0,),
                Text("Humidity",style: titles,),
                const SizedBox(height: 18.0,),
                Text("Feels Like",style: titles,),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$wind",style: titles,),
                const SizedBox(height: 18.0,),
                Text("$pressure",style: titles,),
                const SizedBox(height: 18.0,),
                Text("$humidity",style: titles,),
                const SizedBox(height: 18.0,),
                Text("$feels_like",style: titles,),
              ],
            )
          ],
        )
      ],
    ),
  );
}
