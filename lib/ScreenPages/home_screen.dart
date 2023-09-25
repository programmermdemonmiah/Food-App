import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          top: 25,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 10,
            top: 5,
          ),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Food App',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // SizedBox(width: 80,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: null,
                          iconSize: 30,
                          icon: Icon(Icons.search)),
                      SizedBox(
                        width: 6,
                      ),
                      IconButton(
                        onPressed: null,
                        iconSize: 45,
                        icon: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/emon.png'),
                          radius: 35,
                        ),
                      ),
                    ],
                  )
                  // CircleAvatar(
                  //   backgroundImage: AssetImage('assets/images/'),
                  // ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 7,
                ),
                child: Container(
                  height: 0.5,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
