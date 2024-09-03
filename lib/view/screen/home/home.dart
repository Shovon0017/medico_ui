import 'package:flutter/material.dart';
import 'package:medico/common%20widget/search_field.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Color(0xffFFFFFF),
      appBar: AppBar(backgroundColor:Color(0xffFFFFFF),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(
          children: [
            SearchField(onChanged: (String text){
            }),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              width: double.infinity,
              child: Expanded(
                child: ListView.builder(
                  itemCount: 3,padding: EdgeInsets.all(2),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                    return Container(
                      height: 120,
                      width: 206,

                      child: Image.asset("images/trand2.png"),
                    );
                }),
              ),
            ),
            Text("Category",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Expanded(
                child: GridView.builder(
                  itemCount: 9,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, childAspectRatio: .8,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                    ),
                    itemBuilder: (context, index) {
                      return Container(

                        child:Column(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Card(
                                color: Colors.blue,
                              ),
                            ),
                            Text("Name")
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
