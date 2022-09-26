import 'package:dio/dio.dart';
import 'package:getx_lesson_one/data/i_products_repository.dart';
import 'package:getx_lesson_one/models/product_model.dart';

class ProductsRepository implements IProductsRepository {
  final Dio _dio;

  ProductsRepository(this._dio);

  @override
  Future<List<ProductModel>> findAllProducts() async {
    try {
      final response = await _dio.get(
          'https://getx-lesson-one-default-rtdb.firebaseio.com/products.json');
      if (response.data == 'null') {
        return [];
      }
      return (response.data as List)
          .map((e) => ProductModel.fromMap(e))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
