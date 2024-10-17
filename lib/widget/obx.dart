import 'package:get/get.dart';
import 'package:getx/models/orderclass.dart';
import 'package:getx/widget/orderitem.dart';
// import 'package:shopping_app/models/cart_item.dart';
// import 'package:shopping_app/models/order.dart';

import '../models/CartItemmodel.dart';

class OrderController extends GetxController {
  var _orders = [].obs;

  List<Order> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    _orders.insert(
        0,
        Order(
            id: DateTime.now().toString(),
            products: cartProducts,
            amount: total,
            dateTime: DateTime.now(), orderId: 'orderid'),
            
      //           body: Obx(() => ListView.builder(
      //       itemCount: OrderController().orders.length,
      //       itemBuilder: (context, index) =>
      //           OrderItem(OrderController().orders[index])),
      // ),

            );
            
  }
}