class Weather {
  Weather({
    this.temperature,
    this.weatherIcons,
    this.weatherDescriptions,
    this.windSpeed,
    this.windDegree,
    this.windDir,
    this.pressure,
    this.precip,
    this.humidity,
    this.cloudcover,
    this.feelslike,
    this.uvIndex,
    this.visibility,
    this.isDay,
  });

  int temperature;

  List<String> weatherIcons;
  List<String> weatherDescriptions;
  int windSpeed;
  int windDegree;
  String windDir;
  int pressure;
  int precip;
  int humidity;
  int cloudcover;
  int feelslike;
  int uvIndex;
  int visibility;
  String isDay;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        // observationTime: json["observation_time"],
        temperature: json["temperature"],
        // weatherCode: json["weather_code"],
        weatherIcons: List<String>.from(json["weather_icons"].map((x) => x)),
        weatherDescriptions:
            List<String>.from(json["weather_descriptions"].map((x) => x)),
        windSpeed: json["wind_speed"],
        windDegree: json["wind_degree"],
        windDir: json["wind_dir"],
        pressure: json["pressure"],
        precip: json["precip"],
        humidity: json["humidity"],
        cloudcover: json["cloudcover"],
        feelslike: json["feelslike"],
        uvIndex: json["uv_index"],
        visibility: json["visibility"],
        isDay: json["is_day"],
      );

  // Map<String, dynamic> toJson() => {
  //     "observation_time": observationTime,
  //     "temperature": temperature,
  //     "weather_code": weatherCode,
  //     "weather_icons": List<dynamic>.from(weatherIcons.map((x) => x)),
  //     "weather_descriptions": List<dynamic>.from(weatherDescriptions.map((x) => x)),
  //     "wind_speed": windSpeed,
  //     "wind_degree": windDegree,
  //     "wind_dir": windDir,
  //     "pressure": pressure,
  //     "precip": precip,
  //     "humidity": humidity,
  //     "cloudcover": cloudcover,
  //     "feelslike": feelslike,
  //     "uv_index": uvIndex,
  //     "visibility": visibility,
  //     "is_day": isDay,
  // };
}
