import 'package:dio/dio.dart';
import 'package:pos_terpadu_bloc/model/order/order.dart';
import 'package:pos_terpadu_bloc/model/order/order_detail.dart';

import '../global_service/global_service.dart';
import '../local_data_service/local_data_service.dart';

class OrderService {
  String endpoint = "order";
  static const baseUrl = GlobalService.baseUrl;
  final token = DB.getToken();
  String ownerId = DB.getUser()?['id'] ?? '';

  Future<List<Order>> getOrder() async {
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

    List<Order> items =
        (obj["data"] as List).map((item) => Order.fromJson(item)).toList();
    return items;
  }

  Future<List<OrderDetail>> getOrderDetail() async {
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

    List<OrderDetail> items = (obj["data"] as List)
        .map((item) => OrderDetail.fromJson(item))
        .toList();
    return items;
  }

  Future add(Order item) async {
    try {
      // String userId = AuthService.userId ?? '';

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
          "owner_id": DB.getUser(),
          "table_number": item.tableNumber,
          "order_detail": item.orderDetail,
          "total": item.total,
          "status": item.status,
        },
      );
      Map obj = response.data;
    } on Exception catch (err) {
      print(err);
    }
  }
}
