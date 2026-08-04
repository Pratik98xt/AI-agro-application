import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 250, 235),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 250, 235),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Weather",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            // Current Weather Card
            Container(
  width: double.infinity,
  padding: const EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: const Color(0xff2E7D32),
    borderRadius: BorderRadius.circular(20),
  ),
  child: const Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.location_on,
            color: Colors.white,
          ),
          SizedBox(width: 5),
          Text(
            "Pune, Maharashtra",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),

      SizedBox(height: 20),

      Icon(
        Icons.wb_sunny,
        size: 70,
        color: Colors.amber,
      ),

      SizedBox(height: 10),

      Text(
        "31°C",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),

      SizedBox(height: 5),

      Text(
        "Sunny",
        style: TextStyle(
          color: Colors.white70,
          fontSize: 18,
        ),
      ),

      SizedBox(height: 5),

      Text(
        "Feels like 33°C",
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
    ],
  ),
),

const SizedBox(height: 25),

Row(
  children: [
    Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: const Column(
          children: [
            Icon(
              Icons.water_drop,
              color: Colors.blue,
              size: 35,
            ),
            SizedBox(height: 10),
            Text(
              "65%",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Humidity",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    ),

    const SizedBox(width: 12),

    Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: const Column(
          children: [
            Icon(
              Icons.air,
              color: Colors.green,
              size: 35,
            ),
            SizedBox(height: 10),
            Text(
              "12 km/h",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Wind",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    ),

    const SizedBox(width: 12),

    Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: const Column(
          children: [
            Icon(
              Icons.umbrella,
              color: Colors.deepPurple,
              size: 35,
            ),
            SizedBox(height: 10),
            Text(
              "20%",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Rain",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    ),
  ],
),

const SizedBox(height: 25),

const Align(
  alignment: Alignment.centerLeft,
  child: Text(
    "7-Day Forecast",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
),

const SizedBox(height: 15),

SizedBox(
  height: 130,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 7,
    itemBuilder: (context, index) {
      List<String> days = [
        "Mon",
        "Tue",
        "Wed",
        "Thu",
        "Fri",
        "Sat",
        "Sun",
      ];

      List<String> temp = [
        "31°",
        "29°",
        "30°",
        "28°",
        "32°",
        "31°",
        "30°",
      ];

      return Container(
        width: 90,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              days[index],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Icon(
              Icons.wb_sunny,
              color: Colors.amber,
              size: 35,
            ),

            const SizedBox(height: 10),

            Text(
              temp[index],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    },
  ),
),

const SizedBox(height: 25),

const Align(
  alignment: Alignment.centerLeft,
  child: Text(
    "Today's Farming Tip",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
),

const SizedBox(height: 15),

Container(
  width: double.infinity,
  padding: const EdgeInsets.all(18),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(18),
  ),
  child: const Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      CircleAvatar(
        radius: 25,
        backgroundColor: Color(0xffE8F5E9),
        child: Icon(
          Icons.eco,
          color: Color(0xff2E7D32),
        ),
      ),

      SizedBox(width: 15),

      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Irrigation Advice",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8),

            Text(
              "No significant rainfall is expected today. It is a good time to irrigate your crops during the early morning or evening to reduce water loss.",
              style: TextStyle(
                color: Colors.black54,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),

          ],
        ),
      ),
    );
  }
}