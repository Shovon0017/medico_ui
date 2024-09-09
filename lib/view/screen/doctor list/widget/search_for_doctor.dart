import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:get/get.dart';
import 'package:medico/common%20widget/AlertDialog/alertdialog.dart';
import 'package:medico/common%20widget/common_button.dart';
import 'package:medico/common%20widget/common_text_field.dart';
import 'package:medico/view/screen/doctor%20list/doctorListSearch.dart';

class SearchFieldDoctor extends StatelessWidget {
  SearchFieldDoctor({super.key, required this.onChanged});
  final void Function(String) onChanged;
  var value = -1;
  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: searchController,
      onChanged: onChanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: CupertinoColors.systemGrey3),
              borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8)),
          labelText: "Search Doctors",
          suffixIcon: InkWell(
              onTap: () {
                Get.defaultDialog(
                    title: "Filter",
                    titleStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                    content: Column(
                      children: [
                        DropdownButtonFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                            value: value,
                            items: [
                              DropdownMenuItem(
                                child: Text("Department"),
                                value: -1,
                              ),
                              DropdownMenuItem(
                                  child: Text("Department"), value: 0),
                              DropdownMenuItem(
                                  child: Text("Department"), value: 1),
                              DropdownMenuItem(
                                  child: Text("Department"), value: 2)
                            ],
                            onChanged: (v) {}),
                        SizedBox(height: 10),
                        DropdownButtonFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                            value: value,
                            items: [
                              DropdownMenuItem(
                                child: Text("Designation"),
                                value: -1,
                              ),
                              DropdownMenuItem(
                                  child: Text("Designation"), value: 0),
                              DropdownMenuItem(
                                  child: Text("Designation"), value: 1),
                              DropdownMenuItem(
                                  child: Text("Designation"), value: 2)
                            ],
                            onChanged: (v) {}),
                        SizedBox(height: 10),
                        CommonTextField(Controller: TextEditingController(), hinText: "Location", icon: null, color:Colors.grey),
                        SizedBox(height: 10),
                        CommonButton(
                            buttonName: "Search", onTap: () => Get.back())
                      ],
                    ));
              },
              child: Card(
                  color: Colors.blue,
                  child: Icon(
                    Icons.filter_alt_sharp,
                    color: Colors.white,
                  )))),
    );
  }
}
