import 'package:assignment_project/core/api.dart';
import 'package:assignment_project/data/model/product/product_model.dart';
import 'package:dio/dio.dart';

class ProductRepository{
  final Api _api= Api();

  Future<List<ProductModel>> fetchAllProducts() async{
    try{
      
      Response response= await _api.sendRequest.get("/product");
      ApiResponse apiResponse=ApiResponse.fromResponse(response);

      if(!apiResponse.success){
        throw apiResponse.message.toString();
      }
      
     return (apiResponse.data as List<dynamic>).map((json)=> ProductModel.fromJson(json)).toList();
      
    }
    catch(e){
       rethrow;
    }
  }

   Future<List<ProductModel>> fetchProductsByCategoryId(String categoryId) async{
    try{
        Response response= await _api.sendRequest.get("/product/category/$categoryId");
      ApiResponse apiResponse=ApiResponse.fromResponse(response);

      if(!apiResponse.success){
        throw apiResponse.message.toString();
      }
      
     return (apiResponse.data as List<dynamic>).map((json)=> ProductModel.fromJson(json)).toList();
      
    }
    catch(e){
       rethrow;
    }
  }

}