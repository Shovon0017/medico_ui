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
          Container(
            height: 120,
            width: double.infinity,
            child: Expanded(
              flex: 6,
              child: ListView.builder(
                itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                  return Container(
                    height: 120,
                    width: 206,
                    color: Colors.red,
                  );
              }),
            ),
          ),
          Text("Category",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Expanded(
            flex: 6,
            child: GridView.builder(
              itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: .8,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                ),
                itemBuilder: (context, index) {
                  return Container(

                    color: Colors.red,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
