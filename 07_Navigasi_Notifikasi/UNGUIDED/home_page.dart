import 'package:flutter/material.dart';
import 'product.dart';
import 'product_detail_page.dart';

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: '1',
      title: 'Product 1',
      description: 'Description for Product 1',
      price: 29.99,
      imageUrl: 'assets/images/guitar.png', // Gambar diubah ke Asset
    ),
    Product(
      id: '2',
      title: 'Product 2',
      description: 'Description for Product 2',
      price: 49.99,
      imageUrl: 'assets/images/ampli.png', // Gambar diubah ke Asset
    ),
    // Tambahkan lebih banyak produk sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce App'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: products[index]),
                ),
              );
            },
            child: Card(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 150, // Tinggi tetap untuk gambar
                    width: double.infinity, // Lebar mengikuti lebar kolom
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        products[index].imageUrl,
                        fit: BoxFit.cover, // Menyesuaikan gambar agar sesuai
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(products[index].title, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Text('\$${products[index].price.toStringAsFixed(2)}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
