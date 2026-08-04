import 'package:flutter/material.dart';

class FertilizerRecommendationScreen extends StatefulWidget {
  const FertilizerRecommendationScreen({super.key});

  @override
  State<FertilizerRecommendationScreen> createState() =>
      _FertilizerRecommendationScreenState();
}

class _FertilizerRecommendationScreenState
    extends State<FertilizerRecommendationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 250, 235),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 250, 235),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Fertilizer Recommendation",
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
    "Enter Soil Details",
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
    "Provide the soil nutrient values to get the best fertilizer recommendation.",
    style: TextStyle(
      color: Colors.black54,
    ),
  ),
),

const SizedBox(height: 25),

TextField(
  decoration: InputDecoration(
    labelText: "Crop Name",
    hintText: "e.g. Wheat",
    prefixIcon: Icon(Icons.grass),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
),

const SizedBox(height: 20),

TextField(
  keyboardType: TextInputType.number,
  decoration: InputDecoration(
    labelText: "Nitrogen (N)",
    prefixIcon: Icon(Icons.science),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
),

const SizedBox(height: 20),

TextField(
  keyboardType: TextInputType.number,
  decoration: InputDecoration(
    labelText: "Phosphorus (P)",
    prefixIcon: Icon(Icons.science),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
),

const SizedBox(height: 20),

TextField(
  keyboardType: TextInputType.number,
  decoration: InputDecoration(
    labelText: "Potassium (K)",
    prefixIcon: Icon(Icons.science),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
),

const SizedBox(height: 20),

TextField(
  keyboardType: const TextInputType.numberWithOptions(decimal: true),
  decoration: InputDecoration(
    labelText: "Soil pH",
    hintText: "e.g. 6.5",
    prefixIcon: Icon(Icons.water_drop),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
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
      "Recommend Fertilizer",
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
    "Recommended Fertilizer",
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
              Icons.science,
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
                  "NPK 20:20:20",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Balanced Fertilizer",
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
        "Recommendation",
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),

      SizedBox(height: 8),

      Text(
        "• Suitable for your soil nutrient levels.\n"
        "• Apply 50 kg per hectare.\n"
        "• Apply during the early growth stage.\n"
        "• Water the field after application.",
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