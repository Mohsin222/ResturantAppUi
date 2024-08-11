 import 'package:hotle_ui/models/product_model.dart';
import 'package:hotle_ui/utils/constants/images.dart';

class ProductDummyData{
  static List<ProductModel> productList=[
  ProductModel(name: 'Pizza', price: '50', iamgeUrl: TImages.pizza1, categoryName: 'pizza'),
  ProductModel(name: 'Cheese Pizza', price: '70', iamgeUrl: TImages.pizza2, categoryName: 'pizza'),


  ProductModel(name: 'Zinger Burger', price: '60', iamgeUrl: TImages.burger1, categoryName: 'burger'),
 ProductModel(name: 'Beef Burger', price: '90', iamgeUrl: TImages.burger2, categoryName: 'burger'),


ProductModel(name: 'Chicken Tikka', price: '90', iamgeUrl: TImages.tikka1, categoryName: 'tikka'),


ProductModel(name: 'Malai Tikka', price: '90', iamgeUrl: TImages.tikka2, categoryName: 'tikka'),


ProductModel(name: 'Chicken Karhi', price: '90', iamgeUrl:TImages.chicken1, categoryName: 'chicken'),

];
}