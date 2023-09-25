import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20,),
        child: const Padding(
          padding: EdgeInsets.only(left: 10,),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: null,
                      icon: Icon(Icons.search)),
                  SizedBox(width: 20,),
                  IconButton(onPressed: null,
                      iconSize: 30,
                      icon: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/'),
                      ),
                  ),
                  // CircleAvatar(
                  //   backgroundImage: AssetImage('assets/images/'),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
