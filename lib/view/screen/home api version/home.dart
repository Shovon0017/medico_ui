import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medico/common%20widget/CommonIcon.dart';
import 'package:medico/common%20widget/search_field.dart';
import 'package:medico/view/screen/notification/notification.dart';

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
            child: CommonIconButton(onTap: (){
              Get.to(()=>NotificationShow());
            }),
          )
        ],
      ),
      body: Column(
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
            height: 370,
            width: 400,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),color: Colors.grey[200]),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(itemCount: 9,
                  shrinkWrap: true,
                  physics:PageScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                  childAspectRatio: 1.1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10
                  ), itemBuilder: (context,index){
                return Container(
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Card(
                            color: Colors.red,
                          ),
                        ),
                        Text("Name")
                      ],
                    ),
                  ),
                );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
