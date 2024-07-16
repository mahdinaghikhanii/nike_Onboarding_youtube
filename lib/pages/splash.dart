import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SafeArea(
            child: Container(
                height: 54,
                width: MediaQuery.sizeOf(context).width,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ))),
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: false,
            title: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Image.asset("assets/logo.png", width: 68))),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: FadeInRight(
                    delay: const Duration(microseconds: 300),
                    duration: const Duration(seconds: 3),
                    child: Image.asset(
                      "assets/splash.png",
                      fit: BoxFit.cover,
                      height: 390,
                      width: 390,
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Summer\nCollections",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "2024",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "His ability to control his movement keeps defenders guessing",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ]),
              )
            ]));
  }
}
