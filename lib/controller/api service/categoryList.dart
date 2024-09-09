
import 'dart:convert';
import 'dart:developer';

import 'package:medico/Database/categoryList.dart';
import 'package:medico/Model/CategoryListModel.dart';

class CategoryListService{
  static Future<List<CategoryModel>> categoryListService()async{
    try{
      CategoryDetailsModel data= CategoryDetailsModel.fromJson(jsonDecode(jsonEncode(CategoryList.categoryList)));
      log("${data.categoryDetails}");
      return data.categoryDetails??[];
    }
    catch(e){
      log("error:$e");
    }
    return[];

  }
}