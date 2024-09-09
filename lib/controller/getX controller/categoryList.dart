import 'dart:developer';

import 'package:get/get.dart';
import 'package:medico/Database/categoryList.dart';
import 'package:medico/Model/CategoryListModel.dart';
import 'package:medico/controller/api%20service/categoryList.dart';


class CategoryListController extends GetxController {

  List<CategoryModel> finalProductList = [];
  List<CategoryModel> category = [];
  RxBool isLoading = false.obs;
  getProduct() async {
    finalProductList= await CategoryListService.categoryListService();
    isLoading.value = true;
    category.addAll(finalProductList);
    isLoading.value = false;
  }


  @override
  void onInit() {
    getProduct();

    super.onInit();
  }
}
