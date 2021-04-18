import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:klimae/services/wether_service.dart';
import 'glass_image.dart';

class ForeGround extends StatefulWidget {
  const ForeGround({
    Key key,
  }) : super(key: key);

  @override
  _ForeGroundState createState() => _ForeGroundState();
}

class _ForeGroundState extends State<ForeGround> {

final WeatherService weatherService = WeatherService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            icon: Icon(Icons.circle_notifications),
            onPressed: () async {
              
              await weatherService.getWeatherInfo('Kolkata');
            },
            iconSize: 40,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Klimae",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Check the weather!",
                style: TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      borderSide: BorderSide(width: 2),
                    ),
                    hintText: "Search city",
                    suffixIcon: Icon(Icons.search)),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Locations",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.star,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GlassImage(
                    cityImage: "assets/images/city2.jpg",
                    cityText: 'New York',
                    inp: true,
                  ),
                  GlassImage(
                    cityImage: "assets/images/city2.jpg",
                    cityText: 'New York',
                    inp: false,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
