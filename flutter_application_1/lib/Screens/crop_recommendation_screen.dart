import 'package:flutter/material.dart';

class CropRecommendationScreen extends StatefulWidget {
  const CropRecommendationScreen({super.key});

  @override
  State<CropRecommendationScreen> createState() =>
      _CropRecommendationScreenState();
}

class _CropRecommendationScreenState
    extends State<CropRecommendationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 250, 235),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 250, 235),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Crop Recommendation",
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

            // Input Form
            const Align(
  alignment: Alignment.centerLeft,
  child: Text(
    "Enter Farm Details",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  ),
),

const SizedBox(height: 8),

const Align(
  alignment: Alignment.centerLeft,
  child: Text(
    "Fill in the details below to get the best crop recommendation.",
    style: TextStyle(
      color: Colors.black54,
    ),
  ),
),

const SizedBox(height: 25),

DropdownButtonFormField(
  decoration: InputDecoration(
    labelText: "Select State",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    filled: true,
    fillColor: Colors.white,
  ),
  items: const [
    DropdownMenuItem(
      value: "Maharashtra",
      child: Text("Maharashtra"),
    ),
    DropdownMenuItem(
      value: "Karnataka",
      child: Text("Karnataka"),
    ),
    DropdownMenuItem(
      value: "Gujarat",
      child: Text("Gujarat"),
    ),
  ],
  onChanged: (value) {},
),

const SizedBox(height: 20),

TextField(
  decoration: InputDecoration(
    labelText: "District",
    hintText: "Enter District",
    prefixIcon: Icon(Icons.location_city),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    filled: true,
    fillColor: Colors.white,
  ),
),

const SizedBox(height: 20),

DropdownButtonFormField(
  decoration: InputDecoration(
    labelText: "Soil Type",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    filled: true,
    fillColor: Colors.white,
  ),
  items: const [
    DropdownMenuItem(
      value: "Black Soil",
      child: Text("Black Soil"),
    ),
    DropdownMenuItem(
      value: "Red Soil",
      child: Text("Red Soil"),
    ),
    DropdownMenuItem(
      value: "Alluvial Soil",
      child: Text("Alluvial Soil"),
    ),
  ],
  onChanged: (value) {},
),

const SizedBox(height: 20),

TextField(
  keyboardType: TextInputType.number,
  decoration: InputDecoration(
    labelText: "Temperature (°C)",
    prefixIcon: Icon(Icons.thermostat),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    filled: true,
    fillColor: Colors.white,
  ),
),

const SizedBox(height: 20),

TextField(
  keyboardType: TextInputType.number,
  decoration: InputDecoration(
    labelText: "Rainfall (mm)",
    prefixIcon: Icon(Icons.water_drop),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    filled: true,
    fillColor: Colors.white,
  ),
),

const SizedBox(height: 30),

SizedBox(
  width: double.infinity,
  height: 55,
  child: ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff2E7D32),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    child: const Text(
      "Recommend Crop",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),

const SizedBox(height: 30),

const Align(
  alignment: Alignment.centerLeft,
  child: Text(
    "Recommended Crop",
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
  child: const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Row(
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
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Best Match for Your Farm",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      SizedBox(height: 20),

      Text(
        "Why this crop?",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),

      SizedBox(height: 8),

      Text(
        "• Suitable for black soil.\n"
        "• Matches the current temperature.\n"
        "• Ideal rainfall conditions.\n"
        "• High yield in your region.",
        style: TextStyle(
          color: Colors.black54,
          height: 1.5,
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