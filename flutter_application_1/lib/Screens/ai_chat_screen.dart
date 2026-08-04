import 'package:flutter/material.dart';

class AiChatScreen extends StatefulWidget {
  const AiChatScreen({super.key});

  @override
  State<AiChatScreen> createState() => _AiChatScreenState();
}

class _AiChatScreenState extends State<AiChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 250, 235),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 250, 235),
        elevation: 0,

        title: const Row(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xff2E7D32),
              child: Icon(
                Icons.smart_toy,
                color: Colors.white,
              ),
            ),

            SizedBox(width: 12),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "AgroAI Assistant",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "Online",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(15),
              children: [

                // AI messages will come here
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("🌿 AgroAI",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff2E7D32),),),
                      SizedBox(height: 8),
                      Text("Hello Farmer! 👋\nHow can I help you today?",style: TextStyle(fontSize: 15),),
                      ],
                    ),
                ),

            const SizedBox(height: 20),

           Align(
            alignment: Alignment.centerRight,
            child: Container(
              constraints: BoxConstraints(maxWidth: 280),
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Color(0xff2E7D32),
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                ),
              ),
              child: Text("My tomato leaves are turning yellow.",style: TextStyle(color: Colors.white,fontSize: 15,), ),
  ),
),

const SizedBox(height: 20),

Container(
  padding: const EdgeInsets.all(14),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(18),
  ),
  child: const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "🌿 AgroAI",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff2E7D32),
        ),
      ),
      SizedBox(height: 8),
      Text(
        "Yellow leaves can occur due to:\n\n"
        "• Nitrogen deficiency\n"
        "• Overwatering\n"
        "• Early blight disease\n\n"
        "You can scan your crop for a more accurate diagnosis.",
      ),
    ],
  ),
),

              ],
            ),
          ),

          // Input Field will come here
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10,),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Ask AgroAI...",
                      filled: true,
                      fillColor: const Color.fromARGB(255, 234, 250, 235),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

      const SizedBox(width: 10),

      CircleAvatar(
        radius: 24,
        backgroundColor: Colors.grey.shade200,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.mic,
            color: Color(0xff2E7D32),
          ),
        ),
      ),

      const SizedBox(width: 8),

      CircleAvatar(
        radius: 24,
        backgroundColor: const Color(0xff2E7D32),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.send,
            color: Colors.white,
          ),
        ),
      ),
    ],
  ),
),

        ],
      ),
    );
  }
}