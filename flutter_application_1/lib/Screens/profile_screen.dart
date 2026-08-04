import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 250, 235),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 250, 235),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profile",
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

            // Profile Details
            const CircleAvatar(
  radius: 55,
  backgroundColor: Color(0xff2E7D32),
  child: Icon(
    Icons.person,
    size: 60,
    color: Colors.white,
  ),
),

const SizedBox(height: 20),

const Text(
  "Farmer Name",
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
),

const SizedBox(height: 5),

const Text(
  "farmer@agroai.com",
  style: TextStyle(
    color: Colors.black54,
    fontSize: 16,
  ),
),

const SizedBox(height: 30),

Container(
  padding: const EdgeInsets.all(18),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(18),
  ),
  child: const Column(
    children: [

      ListTile(
        leading: Icon(
          Icons.phone,
          color: Color(0xff2E7D32),
        ),
        title: Text("Mobile Number"),
        subtitle: Text("+91 9876543210"),
      ),

      Divider(),

      ListTile(
        leading: Icon(
          Icons.location_on,
          color: Color(0xff2E7D32),
        ),
        title: Text("Village"),
        subtitle: Text("Pune, Maharashtra"),
      ),

      Divider(),

      ListTile(
        leading: Icon(
          Icons.agriculture,
          color: Color(0xff2E7D32),
        ),
        title: Text("Farm Size"),
        subtitle: Text("5 Acres"),
      ),

      Divider(),

      ListTile(
        leading: Icon(
          Icons.language,
          color: Color(0xff2E7D32),
        ),
        title: Text("Preferred Language"),
        subtitle: Text("English"),
      ),
    ],
  ),
),

const SizedBox(height: 30),

SizedBox(
  width: double.infinity,
  height: 55,
  child: ElevatedButton.icon(
    onPressed: () {},
    icon: const Icon(
      Icons.logout,
      color: Colors.white,
    ),
    label: const Text(
      "Logout",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  ),
),

          ],
        ),
      ),
    );
  }
}