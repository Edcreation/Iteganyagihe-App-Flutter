class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  int? pressure;

  Weather({
    this.cityName,
    this.humidity,
    this.wind,
    this.pressure,
    this.temp,
    this.feels_like,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    wind = json["wind"]["speed"];
    humidity = json["main"]["humidity"];
    temp = json["main"]["temp"];
    pressure = json["main"]["pressure"];
    feels_like = json["main"]["feels_like"];
  }
}
