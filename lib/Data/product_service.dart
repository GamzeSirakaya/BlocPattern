import 'package:blocpattern/Models/product.dart';

class ProductService {
  //bir apiden data çekiyor olabilir.
  static List<Product> products = new List<Product>();
  static ProductService _singleton = ProductService._internal();

  factory ProductService() {
    // arka planda bir tane instance oluşturuyor.
    return _singleton;
  }

  ProductService._internal(); //constructor no parameter

  static List<Product> getAll() {
    products.add(new Product(1, "Acer Laptop", 6000));
    products.add(new Product(2, "Asus Laptop", 7000));
    products.add(new Product(3, "Lenova Laptop", 8000));
    products.add(new Product(4, "Huawei Laptop", 9000));
    return products;
  }
}
