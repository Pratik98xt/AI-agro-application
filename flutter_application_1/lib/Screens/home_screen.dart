import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/ai_chat_screen.dart';
import 'package:flutter_application_1/Screens/crop_recommendation_screen.dart';
import 'package:flutter_application_1/Screens/fertilizer_recommendation_screen.dart';
import 'package:flutter_application_1/Screens/market_price_screen.dart';
import 'package:flutter_application_1/Screens/scan_crop_screen.dart';
import 'package:flutter_application_1/Screens/weather_screen.dart';
import '../Model/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 250, 235),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 250, 235),
        elevation: 0,
        automaticallyImplyLeading: false,

        title: const Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                       ),

            SizedBox(width: 12),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Good Morning 👋",style: TextStyle(fontSize: 14, color: Colors.black54,),),

                Text( "Farmer",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,),),
              ],
            ),
          ],
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search crops, diseases...",
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

      // Quick Actions Heading
          const Align(
            alignment: Alignment.centerLeft,
            child: Text("Quick Actions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          ),

        const SizedBox(height: 15),

           // Scan Crop Card
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ScanCropScreen()));
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xff2E7D32),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.document_scanner,
                        color: Color(0xff2E7D32),
                        size: 30,
                      ),
                    ),
              
                    SizedBox(width: 15),
              
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Scan Crop",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),),
                          SizedBox(height: 5),
                          Text("Detect diseases instantly using AI",style: TextStyle(color: Colors.white70,),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

        const SizedBox(height: 15),

    Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AiChatScreen()));
            },
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.smart_toy,
                    color: Color(0xff2E7D32),
                    size: 35,
                  ),
                SizedBox(height: 10),
                Text("Ask AI",style: TextStyle(fontWeight: FontWeight.bold,),),
                ],
              ),
            ),
          ),
        ),

    const SizedBox(width: 15),

    Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const WeatherScreen()));
        },
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Column(
            children: [
              Icon(
                Icons.cloud,
                color: Colors.blue,
                size: 35,
              ),
              SizedBox(height: 10),
              Text(
                "Weather",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    
  ],
),
const SizedBox(height: 25),

const Align(
  alignment: Alignment.centerLeft,
  child: Text(
    "Market Prices",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
),

const SizedBox(height: 15),

InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MarketPriceScreen()));
  },
  child: Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
    ),
    child: const Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xffE8F5E9),
          child: Icon(
            Icons.trending_up,
            color: Color(0xff2E7D32),
          ),
        ),
  
        SizedBox(width: 15),
  
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Market Prices",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
  
              SizedBox(height: 5),
  
              Text(
                "Check today's crop market prices",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
  
        Icon(Icons.arrow_forward_ios, size: 18),
      ],
    ),
  ),
),
const SizedBox(height: 25),

const Align(
  alignment: Alignment.centerLeft,
  child: Text(
    "Recommendations",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
),

const SizedBox(height: 15),

// Crop Recommendation
InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CropRecommendationScreen()));
  },
  child: Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
    ),
    child: const Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xffE8F5E9),
          child: Icon(
            Icons.grass,
            color: Color(0xff2E7D32),
          ),
        ),
  
        SizedBox(width: 15),
  
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Crop Recommendation",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Find the best crop for your farm",
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
  
        Icon(Icons.arrow_forward_ios, size: 18),
      ],
    ),
  ),
),

const SizedBox(height: 15),

// Fertilizer Recommendation
InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const FertilizerRecommendationScreen()));
  },
  child: Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
    ),
    child: const Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xffE8F5E9),
          child: Icon(
            Icons.science,
            color: Color(0xff2E7D32),
          ),
        ),
  
        SizedBox(width: 15),
  
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Fertilizer Recommendation",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Get the right fertilizer suggestion",
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
        Icon(Icons.arrow_forward_ios, size: 18),
      ],
    ),
  ),
),

          ],
        ),
      ),

      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}