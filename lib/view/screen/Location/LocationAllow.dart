

import 'package:flutter/material.dart';

class LocationAllow extends StatelessWidget {
  const LocationAllow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffF1F1F1),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10),
                child: Column(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text("Allow Maps to access this device’s precise location?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                    Row(
                      children: [
                        Container(
                          height: 160,
                          width: 130,
                          color: Colors.red,
                          child: Column(
                            children: [
                              Image.asset("name"),
                              Text("Precise")
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
