import 'package:flutter/material.dart';
import 'package:iteganyagihe/Screens/Views/additional_information.dart';
import 'package:iteganyagihe/model/weather.dart';
import 'package:iteganyagihe/services/weather_api_client.dart';
import 'Views/current_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather("huye");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          elevation: 0.0,
          title: const Text(
            'ITEGANYAGIHE',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 18),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.sunny,
              color: Color.fromARGB(255, 24, 163, 0),
            ),
          ),
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  currentWeather(Icons.cloudy_snowing, "${data?.temp}",
                      "${data?.cityName}"),
                  const SizedBox(
                    height: 60.0,
                  ),
                  const Text("created by M.J.Eddy",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 5,
                          fontWeight: FontWeight.bold)),
                  const Divider(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  additionalInformation('${data?.wind}', "${data?.pressure}",
                      "${data?.humidity}", "${data?.feels_like}")
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: LinearProgressIndicator(
                      semanticsLabel: "Rindira Shaa..."));
            } else if( data?.wind == null){
              return const Center(
                  child: Text("Network Error please check Internet Connection.",style: TextStyle(color: Colors.white),) 
                  );
            }
            return Container();
          },
        ));
  }
}
