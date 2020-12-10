import 'dart:async';

import 'package:blocpattern/Data/cart_service.dart';
import 'package:blocpattern/Models/cart.dart';

class CartBloc {
  final cartStreamController = StreamController.broadcast();
  /*Future ve stream arasındaki fark Future ulaşılmak istenilen hedeften sonra çalışmıyor fakat stream hedefe ulaşınca tekrar çalışabiliyor.
  sürekli bir konuda içerik üretmek gibi*/
  Stream get getStream => cartStreamController.stream;

  void addToCart(Cart item) {
    //sepete ekleme işlemi yaptığımızda olacak işlem
    CartService.addToCart(item);
    cartStreamController.sink.add(CartService
        .getCart()); // sink ile getCart kullanan kim varsa onun için gerekli işlemleri yap diyoruz.
    //sink aslında streami uyandıran yapı olduğundan parametre olarak bir event(olay) alıyor.
  }

  void removeCart(Cart item) {
    CartService.removeFromCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  List<Cart> getCart() {
    //tüm sepet
    return CartService.getCart();
  }
}

final cartBloc = CartBloc();
