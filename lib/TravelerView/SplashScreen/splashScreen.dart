import 'package:flutter/material.dart';
import 'package:travel_guide/AuthView/LoginView/loginScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/splash.png"
                  ),
                  fit: BoxFit.cover,
                  // opacity: 100,
                )
            ),
          ),
          Positioned(
            top: 0,left: 0,bottom: 0,right: 0,
            child:  Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(

                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black.withOpacity(0.6),Colors.white.withOpacity(0.12)],

                  // linear-gradient(180deg, #6691C4 -18.52%, rgba(0, 0, 0, 0) 55.53%);
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 150,),
                  Padding(
                    padding: const EdgeInsets.only(left: 33, right: 34),
                    child: Column(
                      children: [
                        Text(
                          "Unforgotten",
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Experience",
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 32,),
                  Padding(
                    padding: const EdgeInsets.only(left: 36, right: 36),
                    child: Column(
                      children: [
                        Text(
                          "Book your tour with us we have",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          "many packages to explore",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          "the world",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 74, vertical: 41),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFE27D5F)
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        )
                    );
                    print(
                        "Continue..."
                    );
                  },
                  child: SizedBox(
                    width: 280,
                    height: 66,
                    child: Center(
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),

                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}