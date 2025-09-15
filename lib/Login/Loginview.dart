import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginview extends StatefulWidget {
  const loginview({super.key});

  @override
  State<loginview> createState() => _loginviewState();
}

class _loginviewState extends State<loginview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 56.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Explore now",

                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Join SO today.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 31,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: ElevatedButton(

                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.white,
                      minimumSize: Size(380, 61)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/google_icon.png',
                        // width: 40,
                        // height: 40,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 8),
                      Text("Sign up with Google"),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: ElevatedButton(

                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.white,
                      minimumSize: Size(380, 61)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/apple_icon.png',

                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 8),
                      Text("Sign up with Apple"),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 18,
                      ),
                    ),
                    Text("    or    ",style: TextStyle(
                      color: Colors.grey
                    ),),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 18,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: ElevatedButton(

                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.blueAccent,
                      minimumSize: Size(380, 61)

                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      SizedBox(width: 8),
                      Text("Create account",style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 58.0,right: 180),
                child: Text("Already have an account?",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: ElevatedButton(

                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.white,
                      minimumSize: Size(380, 61)

                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      SizedBox(width: 8),
                      Text("Sign in",style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 21,
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 148.0,right: 18,left: 36),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.grey, // Default text color
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(text: "By signing up, you agree to the "),
                            TextSpan(
                              text: "Terms of Service",
                              style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                              // Add gesture recognizer here if needed
                            ),
                            TextSpan(text: " and \n"),
                            TextSpan(text: "                 "),
                            TextSpan(
                              text: "Privacy Policy ",
                              style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(text: "including "),
                            TextSpan(
                              text: "Cookie Use. ",
                              style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
