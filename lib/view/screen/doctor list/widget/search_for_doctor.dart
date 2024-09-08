import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medico/common%20widget/AlertDialog/alertdialog.dart';
import 'package:medico/common%20widget/common_button.dart';

class SearchFieldDoctor extends StatelessWidget {
  const SearchFieldDoctor({super.key,
    required this.onChanged});
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: searchController,
      onChanged: onChanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide:  BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:CupertinoColors.systemGrey3),
              borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8)),
          labelText: "Search Doctors",
          suffixIcon: InkWell(
              onTap: (){
                Get.to(()=>AlertDiaLogShow());
              },
              child: Card(color:Colors.blue,child: Icon(Icons.filter_alt_sharp,color: Colors.white,)))
      ),
    );
  }
}
