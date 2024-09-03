import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
            height: 32,
            width: 114,
            child: Image.asset("images/splash logo.png")),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications_active_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8, left: 5),
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        "images/trand2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
            flex: 6,
            child: GridView.builder(
              itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: .5),
                itemBuilder: (context, index) {
                  return Container(
                    height: 20,
                    width: 20,
                    color: Colors.red,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
