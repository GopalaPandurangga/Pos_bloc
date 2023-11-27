import '../../core.dart';
import '../../model/product/product.dart';

class ProductService {
  String endpoint = "products";
  static const baseUrl = GlobalService.baseUrl;
  final token = DB.getToken();
  String ownerId = DB.getUser()?['id'] ?? '';
  Future<List<Product>> getProducts() async {
    await DB.init();
    var response = await Dio().get(
      '$baseUrl/api/$endpoint',
      options: Options(
        headers: {
          'Authorization': token,
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;

    List<Product> items =
        (obj["data"] as List).map((item) => Product.fromJson(item)).toList();
    return items;
  }

  // Future<List<Product>> getById(int id) async {
  //   final Dio dio = Dio();
  //   final String url = '$baseUrl/api/$endpoint/$id';

  //   try {
  //     final response = await dio.get(
  //       url,
  //       options: Options(
  //         headers: {
  //           'Content-Type': 'application/json',
  //         },
  //       ),
  //     );

  //     return Map<Product>.from(response.data['data']);
  //   } catch (e) {
  //     throw e;
  //   }
  // }

  Future<bool> add(Product item) async {
    try {
      var response = await Dio().post(
        '$baseUrl/api/$endpoint',
        options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': token,
          },
        ),
        data: {
          "owner_id": AuthService.currentUser?.id,
          "photo": item.photo,
          "product_name": item.productName,
          "price": item.price,
          "category": item.category,
          "description": item.description,
        },
      );
      Map obj = response.data;
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  Future<Map<String, dynamic>> update(int id, Map<String, dynamic> data) async {
    final Dio dio = Dio();
    final String url = '$baseUrl/api/$endpoint/$id';

    try {
      final response = await dio.put(
        url,
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      return Map<String, dynamic>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<void> delete(int id) async {
    final Dio dio = Dio();
    final String url = '$baseUrl/api/$endpoint/$id';

    try {
      await dio.delete(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': token,
          },
        ),
      );
    } catch (e) {
      throw e;
    }
  }
}
