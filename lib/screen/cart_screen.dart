import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/widget/cartitem.dart';
import '../controllers/cartcntrl.dart';
import '../controllers/ordercntrl.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cartController = Get.put(CartController());
    var orderController = Get.put(OrderController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Your cart"),
      ),
      body: GetBuilder<CartController>(
        init: CartController(),
        builder: (cont) => Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Chip(
                      label: Text(
                        '₦${cartController.totalAmount.toStringAsFixed(2)}',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    GetBuilder<OrderController>(
                        init: OrderController(),
                        builder: (context) {
                          return TextButton(
                              onPressed: () {
                                orderController.addOrder(
                                    cartController.items.values.toList(),
                                    cartController.totalAmount);
                                cartController.clear();
                                Get.snackbar(
                                    "Orders", "Orders placed successfully",
                                    backgroundColor: Colors.green,
                                    snackPosition: SnackPosition.BOTTOM);
                              },
                              child: Text('ORDER NOW'));
                        })
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: cartController.items.length,
                  itemBuilder: (context, index) => CartItem(
                        cartController.items.values.toList()[index].id,
                        cartController.items.values
                            .toList()[index]
                            .productPrice,
                        cartController.items.values
                            .toList()[index]
                            .productQuantity,
                        cartController.items.values
                            .toList()[index]
                            .productTitle,
                        cartController.items.keys.toList()[index],
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
