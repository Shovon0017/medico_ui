class CategoryDetailsModel {
  List<CategoryModel>? categoryDetails;

  CategoryDetailsModel({this.categoryDetails});

  CategoryDetailsModel.fromJson(Map<String, dynamic> json) {
    if (json['categoryDetails'] != null) {
      categoryDetails = <CategoryModel>[];
      json['categoryDetails'].forEach((v) {
        categoryDetails!.add(CategoryModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (categoryDetails != null) {
      data['categoryDetails'] =
          categoryDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryModel {
  String? image;
  String? name;

  CategoryModel({this.image, this.name});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    return data;
  }
}
