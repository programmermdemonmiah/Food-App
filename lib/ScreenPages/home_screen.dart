import 'package:another_carousel_pro/another_carousel_pro.dart';
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
              const SizedBox(height: 6,),
              Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                        height: 200.0,
                        width: 350.0,
                        child: AnotherCarousel(
                          images: const [
                            AssetImage('assets/images/emon.png'),
                            NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                            NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                          ],
                          dotSize: 4.0,
                          dotSpacing: 15.0,
                          // dotColor: Colors.lightGreenAccent,
                          // indicatorBgPadding: 5.0,
                          // dotBgColor: Colors.purple.withOpacity(0.5),
                          borderRadius: true,
                        )
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
