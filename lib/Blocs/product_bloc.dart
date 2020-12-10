import 'dart:async';

import 'package:blocpattern/Data/product_service.dart';
import 'package:blocpattern/Models/product.dart';

class ProductBloc {
  final productStreamController = StreamController.broadcast();
  Stream get getStream => productStreamController.stream;

  List<Product> getAll() {
    return ProductService.getAll();
  }
}

final productBloc = ProductBloc();
