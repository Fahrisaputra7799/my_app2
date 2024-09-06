import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Image.asset('images/bacground.png', height: 580),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'Complete your grocery need easily',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), 
              ),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'product/');
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min, 
              children:[
                Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10), 
                Icon(
                  Icons.arrow_right_alt, 
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
