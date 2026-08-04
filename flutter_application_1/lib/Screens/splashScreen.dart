import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
void initState() {
  super.initState();

  Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 250, 235),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 40),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80,),

              //Main Image------------------------------------------
              Container(
                height: 300,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),border: Border.all(color: const Color.fromARGB(255, 128, 126, 126),width: 0.5),),
                child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('assets/splashScreen_Image.png',fit: BoxFit.cover,)),
              ),
              SizedBox(height: 30,),

              //Icon -----------------------------------------------
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/splashScreen2_image.png',height: 55,width: 55,),
              ),
              SizedBox(height: 10,),
              Text('Agro AI',style: TextStyle(color: const Color.fromARGB(255, 86, 131, 87),fontSize: 25,fontWeight: FontWeight(800)),),
              SizedBox(height: 30,),
              
              //text----------------------------------------
              Text("Smart farming with Artifical Intelligence",style: TextStyle(color: const Color.fromARGB(255, 76, 75, 75),fontWeight: FontWeight(500),fontSize: 20),textAlign: TextAlign.center,),
              SizedBox()



            ],
          ),
        ),
      ),
    );
  }
}