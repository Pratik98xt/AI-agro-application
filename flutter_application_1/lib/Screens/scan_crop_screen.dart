import 'package:flutter/material.dart';

class ScanCropScreen extends StatefulWidget {
  const ScanCropScreen({super.key});

  @override
  State<ScanCropScreen> createState() => _ScanCropScreenState();
}

class _ScanCropScreenState extends State<ScanCropScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 250, 235),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 250, 235),
        elevation: 0,
        centerTitle: true,
        title: const Text("Scan Crop",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const SizedBox(height: 10),

            const Text("Detect crop diseases using AI",style: TextStyle(fontSize: 16,color: Colors.black54,),),

            const SizedBox(height: 30),

            // Upload Box
            Container(
              width: double.infinity,
              height: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.green,
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: const Color(0xffE8F5E9),
                    child: Icon(
                      Icons.document_scanner_outlined,
                      size: 45,
                      color: const Color(0xff2E7D32),
                    ),
                  ),

            const SizedBox(height: 20),

            const Text("Scan Your Crop",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),),

            const SizedBox(height: 10),

           const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text("Take a clear photo of the affected leaf or upload one from your gallery.",textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.black54,
            fontSize: 15,
          ),
        ),
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
      Icons.camera_alt,
      color: Colors.white,
    ),
    label: const Text(
      "Take Photo",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff2E7D32),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  ),
),

const SizedBox(height: 15),

SizedBox(
  width: double.infinity,
  height: 55,
  child: OutlinedButton.icon(
    onPressed: () {},
    icon: const Icon(
      Icons.photo_library,
      color: Color(0xff2E7D32),
    ),
    label: const Text(
      "Upload from Gallery",
      style: TextStyle(
        color: Color(0xff2E7D32),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    style: OutlinedButton.styleFrom(
      side: const BorderSide(
        color: Color(0xff2E7D32),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  ),
),

const SizedBox(height: 25),

SizedBox(
  width: double.infinity,
  height: 55,
  child: ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    child: const Text(
      "Analyze Crop",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
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