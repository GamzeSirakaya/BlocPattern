import 'package:blocpattern/Models/cart.dart';

class CartService {
  static List<Cart> cartItems = new List<Cart>(); //sepet bilgimiz tutulacak.
  static CartService _singleton = CartService._internal();

  factory CartService() {
    return _singleton;
  }
  CartService._internal();
  static void addToCart(Cart item) {
    // sepete ekle
    //sepete ekleme
    cartItems.add(item);
  }

  static void removeFromCart(Cart item) {
    // sepeti sil

    cartItems.remove(item);
  }

  static List<Cart> getCart() {
    // sepeti listele

    return cartItems;
  }
}
