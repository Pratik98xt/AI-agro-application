import 'package:flutter/material.dart';

class MarketPriceScreen extends StatefulWidget {
  const MarketPriceScreen({super.key});

  @override
  State<MarketPriceScreen> createState() => _MarketPriceScreenState();
}

class _MarketPriceScreenState extends State<MarketPriceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 250, 235),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 250, 235),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Market Prices",
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

            // Search Bar
            TextField(
  decoration: InputDecoration(
    hintText: "Search Crop",
    prefixIcon: const Icon(Icons.search),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
  ),
),

const SizedBox(height: 25),

const Align(
  alignment: Alignment.centerLeft,
  child: Text(
    "Today's Market Prices",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),
),

const SizedBox(height: 20),

Container(
  padding: const EdgeInsets.all(18),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(18),
  ),
  child: const Row(
    children: [

      CircleAvatar(
        radius: 28,
        backgroundColor: Color(0xffE8F5E9),
        child: Icon(
          Icons.grass,
          color: Color(0xff2E7D32),
          size: 30,
        ),
      ),

      SizedBox(width: 15),

      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Wheat",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "₹2,450 / Quintal",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),

      Icon(
        Icons.trending_up,
        color: Colors.green,
      ),
    ],
  ),
),

const SizedBox(height: 15),

Container(
  padding: const EdgeInsets.all(18),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(18),
  ),
  child: const Row(
    children: [

      CircleAvatar(
        radius: 28,
        backgroundColor: Color(0xffE8F5E9),
        child: Icon(
          Icons.grass,
          color: Color(0xff2E7D32),
          size: 30,
        ),
      ),

      SizedBox(width: 15),

      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tomato",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "₹1,800 / Quintal",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),

      Icon(
        Icons.trending_down,
        color: Colors.red,
      ),
    ],
  ),
),

const SizedBox(height: 15),

Container(
  padding: const EdgeInsets.all(18),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(18),
  ),
  child: const Row(
    children: [

      CircleAvatar(
        radius: 28,
        backgroundColor: Color(0xffE8F5E9),
        child: Icon(
          Icons.grass,
          color: Color(0xff2E7D32),
          size: 30,
        ),
      ),

      SizedBox(width: 15),

      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Soybean",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "₹4,250 / Quintal",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),

      Icon(
        Icons.trending_up,
        color: Colors.green,
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