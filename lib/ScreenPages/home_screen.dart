import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

bool isShowMore = false;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ==== Bottom Navigation bar===============
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: null,
      //     unselectedItemColor: Colors.indigoAccent,
      //     selectedItemColor: Colors.green,
      //     onTap: (index){
      //       setState(() {
      //         selectedIndex = Index;
      //       });
      //     },
      //     items: const[
      //       BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home',),
      //       BottomNavigationBarItem(icon: Icon(Icons.messenger), label: 'Messages'),
      //       BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourites'),
      //       BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Orders'),
      //       BottomNavigationBarItem(icon: Icon(Icons.feedback_outlined), label: 'Report'),
      //     ]
      // ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textBaseline: TextBaseline.alphabetic,
                children: [
                   InkWell(
                     onTap: () {},
                     child: const Text(
                      'Food App',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                   ),
                  // SizedBox(width: 80,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: (){},
                          iconSize: 30,
                          icon: const Icon(Icons.search)),
                      const SizedBox(
                        width: 6,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const IconButton(
                          onPressed: null,
                          iconSize: 45,
                          icon: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/emon.png'),
                            radius: 35,
                          ),
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
              const SizedBox(
                height: 6,
              ),
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
                                AssetImage(
                                  'assets/images/slider1.jpg',
                                ),
                                AssetImage('assets/images/slider2.jpg'),
                                AssetImage('assets/images/slider3.jpeg'),
                                AssetImage('assets/images/slider4.jpg'),
                                AssetImage('assets/images/slider5.jpg'),
                                AssetImage('assets/images/slider1.jpg'),
                                AssetImage('assets/images/slider6.jpeg'),
                              ],
                              dotSize: 4.0,
                              dotSpacing: 15.0,
                              dotColor: Colors.lightGreenAccent,
                              indicatorBgPadding: 5.0,
                              dotBgColor: Colors.redAccent.withOpacity(0.4),
                              borderRadius: true,
                            )),
                        const SizedBox(
                          height: 6,
                        ),
                        const Column(
                          children: [
                            Text('Fast Foods', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage('assets/images/slider1.jpg'),fit: BoxFit.fill),
                                      Text('Burger'),
                                      Text('Price: 100'),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 120,
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage('assets/images/slider1.jpg'), fit: BoxFit.fill),
                                      Text('Burger'),
                                      Text('Price: 100'),
                                    ],
                                  ),
                                ),
                                SizedBox( width: 120,
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage('assets/images/slider1.jpg'), fit: BoxFit.fill),
                                      Text('Burger'),
                                      Text('Price: 100'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4,),

                            SizedBox(height: 4,),
                          ],
                        ),
                      ],
                    )),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
