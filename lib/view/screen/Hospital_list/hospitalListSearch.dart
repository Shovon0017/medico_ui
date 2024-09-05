

import 'package:flutter/material.dart';
import 'package:medico/common%20widget/search_field.dart';
import 'package:medico/view/screen/Hospital_list/search_for_hospital.dart';

class HospitalListSearch extends StatelessWidget {
  const HospitalListSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(
            children: [
              SearchFieldHospital(onChanged: (String Text){
              }),
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hospital List",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  Container(
                    width: 190,
                    child: Row(mainAxisAlignment:MainAxisAlignment.end,
                      children: [
                        Icon(Icons.location_on),
                        Text("MymenSingh",style: TextStyle(fontSize: 20)),
                        Icon(Icons.arrow_drop_down),
                      ]
                    )
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,index){
                  return SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      elevation: 5,
                      color: Color(0xffFFFFFF),
                      child: Row(
                        children: [
                          Card(elevation: 3,
                            color: Color(0xffFFFFFF),
                            child:Image.asset("images/delta hospital.png"),
                          ),
                          SizedBox(width: 20),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Delta Health Care"),
                                SizedBox(height: 5),
                                RichText(text: TextSpan(
                                  children: [
                                    TextSpan(text: "Category:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black) ),
                                    TextSpan(text: "Specialized Hospitals",style: TextStyle(color: Colors.black))
                                  ]
                                )),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(Icons.location_on),
                                    Text("Mymensingh"),
                                    SizedBox(width: 20),
                                    RichText(text: TextSpan(children: [
                                      TextSpan(text: "Code:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                                      TextSpan(text: "10000399",style: TextStyle(color: Colors.black))
                                    ]))
                                  ],
                                ),

                            
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),

    );
  }
}
