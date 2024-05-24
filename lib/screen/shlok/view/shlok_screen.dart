import 'dart:ui';

import 'package:flutter/material.dart';

class shlokScreen extends StatefulWidget {
  const shlokScreen({super.key});

  @override
  State<shlokScreen> createState() => _shlokScreenState();
}

class _shlokScreenState extends State<shlokScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                return const ListTile(
                  leading: Text(
                    "Shlok 1",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  title: Text(
                    "What did the sons of pandu and also my people do when they had assembled tog",
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 18,),);
              },
            ),
          ),
        ],
      ),
    );
  }
}
