import 'package:get/get.dart';
import 'package:getx/models/Productmodel.dart';
//import 'package:shopping_app/models/product.dart';

class ProductController extends GetxController {
  List<Product> _items = [
    Product(
      id: 1,
      productTitle: 'Sport Shoe',
      description: 'Made for you Check it out!',
      price: 7000.00,
      imageUrl:
         'https://www.jiomart.com/images/product/original/rvyybpx9re/brown-fox-mesh-running-shoes-cricket-shoes-badminton-shoes-volly-ball-shoes-sports-shoes-for-mens-and-boys-running-shoes-for-men-canvas-shoes-for-men-running-shoes-for-men-grey-product-images-rvyybpx9re-0-202209241732.jpg', title: '',
    ),
    // Product(
    //     id: 2,
    //     productTitle: 'Legend',
    //     description:
    //         'Built to last forever, StormKing™ lug rubber outsoles and a flexible elastic goring, this can only be for the Legends and i bet you, you have not seen it anywhere.',
    //     price: 63000.00,
    //     imageUrl:
    //         'https://cdn.shopify.com/s/files/1/0103/6048/7991/products/212963-8020_6.jpg?v=1681124223', title: ''),
    Product(
        id: 3,
        productTitle: 'The Chelsea',
        description: 'Functional and Fashionable.',
        price: 49.00,
        imageUrl:
            'https://static.nike.com/a/vide os/t_PDP_1280_v1/f_auto,q_auto:eco,so_1.38/e808ec2d-6130-40b8-9e84-1632a7ce1ad5/air-max-dawn-shoe-gq9GGH.jpg', title: ''),
    Product(
        id: 4,
        title: 'Men\'s Sneakers',
        productTitle: 'Clean & Comfortable Sneakers made with classic Leathers.',
        price: 49.99,
        imageUrl:
            'https://www.levi.in/dw/image/v2/BBRC_PRD/on/demandware.static/-/Sites-LeviMaster-Catalog/en_IN/dw29ce3df3/images/hi-res/D51860002/D51860002_1_front.JPG?sw=451&sh=600', description: ''),
    Product(
        id: 5,
        productTitle: 'The Chelsea',
        description:
            'Comfortable as you\'d expect.This can only be found at Resilient collection.',
        price: 49.99,
        imageUrl:
            'https://assets.ajio.com/medias/sys_master/root/20220723/8RMO/62db11a7aeb26921af92c139/puma_asphalt-burnt_red_dynamite_slip-on_sneakers.jpg', title: ''),
    // Product(
    //     id: 6,
    //     productTitle: 'Men\'s Sneakers',
    //     description: 'Clean & Comfortable Sneakers made with classic Leathers.',
    //     price: 49.99,
    //     imageUrl:
    //         'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-PremierLowTop-Black-3.4.jpg?v=1600270679', title: ''),
    // Product(
    //     id: 7,
    //     productTitle: 'The Chelsea',
    //     description:
    //         'Made for the men who understand what classic means, every bit was carefully selected so you can go the extra mile with confidence and alacrity.',
    //     price: 49.99,
    //     imageUrl:
    //         'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Cavalier-Toffee-210402-2.jpg?v=1618424894', title: ''),
    Product(
        id: 8,
        productTitle: 'Men\'s Sneakers',
        description: 'Clean & Comfortable Sneakers made with classic Leathers.',
        price: 49.99,
        imageUrl:
            'https://cdn.luxe.digital/media/20230124105426/best-sneakers-for-men-2023-reviews-luxe-digital-1200x600.jpg', title: ''),
    // Product(
    //     id: 9,
    //     productTitle: 'The Chelsea',
    //     description: 'Functional and Fashionable.',
    //     price: 49.99,
    //     imageUrl:
    //         'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Cavalier-Black-1.jpg?v=1589391819', title: ''),
    Product(
        id: 10,
        productTitle: 'Men\'s Sneakers',
        description: 'Clean & Comfortable Sneakers made with classic Leathers.',
        price: 49.99,
        imageUrl:
            'https://img.tatacliq.com/images/i10/437Wx649H/MP000000016613518_437Wx649H_202302211706361.jpeg', title: ''),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favouriteItems {
    return _items.where((productItem) => productItem.isFavourite).toList();
  }

  Product findProductById(int id) {
    return _items.firstWhere((element) => element.id == id);
  }
 
  void toggleFavouriteStatus(int id) {
    items[id].isFavourite = !items[id].isFavourite;
    update();
  }
}
