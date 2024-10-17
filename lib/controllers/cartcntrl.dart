import 'dart:core';
import 'package:get/get.dart';
// import 'package:getx/widget/cartitem.dart';
 import 'package:getx/models/CartItemmodel.dart';
//import 'package:shopping_app/models/cart_item.dart';

class CartController extends GetxController {

  Map<int, CartItem> _items = {};

  Map<int, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    // return  _items?.length?? 0;
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.productPrice * cartItem.productQuantity;
    });
    return total;
  }

  void addItem(int productId, double price, String title, int quantity) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (existingCartItem) => 
          // CartItem(id: existingCartItem.id, productTitle: existingCartItem.productTitle,
          //  productQuantity: existingCartItem.productQuantity + 1, productPrice:  existingCartItem.productPrice,
          //   title: title, quantity: quantity, price: price)
          CartItem(
              id: existingCartItem.id,
              title: existingCartItem.productTitle,
              quantity: existingCartItem.productQuantity + 1,
              price: existingCartItem.productPrice, productPrice: 88, productQuantity: 8, productTitle: 'hjghj',),
              );
    } else {
      _items.putIfAbsent(
        productId,
        () => 
        // CartItem(id: id, productTitle: productTitle, productQuantity: productQuantity, productPrice: productPrice, title: title, quantity: quantity, price: price)
        CartItem(
          id: DateTime.now().toString(),
          title: title,
          price: price,
          quantity: 1, productPrice: 22, productQuantity: 7, productTitle: 'vhgh',
        ),
      );
    }
    update();
  }

  void removeitem(int productId) {
    _items.remove(productId);
    update();
  }

  void clear() {
    _items = {};
    update();
  }
}
