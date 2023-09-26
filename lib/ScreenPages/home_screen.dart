import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  // int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ==== Bottom Navigation bar===============
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: _selectedIndex,
        backgroundColor: null,
          unselectedItemColor: Colors.indigoAccent,
          selectedItemColor: Colors.green,
          onTap: (int index){
            // setState(() {
            //   _selectedIndex = Index;
            // });
          },
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.messenger), label: 'Messages'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourites'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Orders'),
            BottomNavigationBarItem(icon: Icon(Icons.feedback_outlined), label: 'Report'),
          ]
      ),
    //======body start ==============
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
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                            height: 230.0,
                            width: double.infinity,
                            child: AnotherCarousel(
                              images: const [
                                AssetImage('assets/images/emon.png',),
                                AssetImage('assets/images/emon.png'),
                                // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                                // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                              ],
                              dotSize: 4.0,
                              dotSpacing: 15.0,
                              dotColor: Colors.lightGreenAccent,
                              indicatorBgPadding: 5.0,
                              dotBgColor: Colors.purple.withOpacity(0.5),
                              borderRadius: true,
                            )
                        ),
                        const SizedBox(height: 6,),
                        const Row(
                          children: [

                          ],
                        )
                      ],
                    )
                  ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
