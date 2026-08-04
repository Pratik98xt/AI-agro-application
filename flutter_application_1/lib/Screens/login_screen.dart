import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/signup_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 250, 235),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 25),
            child: Column(
              children: [

                const SizedBox(height: 15),

                const Row(
                  children: [
                    Icon(
                      Icons.eco,
                      color: Color(0xff2E7D32),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "AgroAI",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2E7D32),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 6),

                      const Text(
                        "Sign in to your farm dashboard",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),

                      const SizedBox(height: 25),

                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: OutlinedButton.icon(
                          onPressed: () {},

                          icon: const Icon(
                            Icons.g_mobiledata,
                            color: Colors.red,
                            size: 28,
                          ),

                          label: const Text(
                            "Continue with Google",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),

                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Colors.black12,
                            ),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      const Row(
                        children: [
                          Expanded(
                            child: Divider(),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "OR EMAIL",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ),

                          Expanded(
                            child: Divider(),
                          ),
                        ],
                      ),

                      const SizedBox(height: 25),

                      const Text(
                        "Email Address",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 8),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "farmer@agroai.com",
                          prefixIcon: const Icon(Icons.email_outlined),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      const Text("Password",style: TextStyle(fontWeight: FontWeight.w600,),),

                      const SizedBox(height: 8),
                      

                      //PasswordField--------------------------------------------------
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter password",

                          prefixIcon: const Icon(Icons.lock_outline),

                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.visibility_off),
                          ),

                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 18),

                      Row(
                        children: [
                          const Spacer(),

                          TextButton(
                            onPressed: () {},

                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Color(0xff2E7D32),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 15),

                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff2E7D32),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),

                          child: const Text(
                            "Login to Dashboard",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "New to the platform? ",
                          ),

                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupScreen()));
                            },

                            child: const Text(
                              "Create an account",
                              style: TextStyle(
                                color: Color(0xff2E7D32),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 30),

                      const Divider(),

                      const SizedBox(height: 15),

                      const Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "Terms of Service",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "Help Center",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                                          ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}