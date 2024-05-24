import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade300,
        centerTitle: true,
        title: const Text(
          "|| BHAGVAT GEETA ||",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Image.network(
            "https://w0.peakpx.com/wallpaper/816/583/HD-wallpaper-lord-krishna-spiritual-lord-krishna-spiritual-animation-thumbnail.jpg",
            fit: BoxFit.fitHeight,
            height: MediaQuery.sizeOf(context).height,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 1.5,
            ),
            child: Container(),
          ),
          Image.asset("assets/img/toran.png"),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 1.5,
            ),
            child: Container(),
          ),
          Container(
            padding: const EdgeInsets.only(top: 55),
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.black.withOpacity(0.60),

            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return  ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, 'shlok');
                  },
                    leading: const Text(
                      "Adhyay 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    title: const Text(
                      "The Yoga of the Despondency of arjuna dsfdsfddff",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 18,),
                  subtitle: Text("અર્જુન વિષાદ યોગ",style: TextStyle(color: Colors.white),),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
