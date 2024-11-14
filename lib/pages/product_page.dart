import 'package:e_commerce_app/controllers/cart_provider.dart';
import 'package:e_commerce_app/model/cart_model.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Product"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartPage(),
                          ),
                        );
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Center(
              child: Image.network(
                product["imageUrl"][0],
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            // Product Name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product["name"],
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.favorite_border_outlined)
              ],
            ),
            const SizedBox(height: 8),

            Text(
              "\$${product["price"]}",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 12),
            const Text("Description of Product",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),),
            const SizedBox(height: 8),

            Text(
              product["description"] ?? "No description available.",
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const Spacer(),
            // Add to Cart and Buy Now Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.2,
                  child: ElevatedButton(
                    onPressed: () {
                      double price =
                          double.tryParse(product['price'].toString()) ?? 0.0;
                      final cartItem = CartItem(
                        id: product['id'],
                        name: product['name'],
                        imageUrl: product['imageUrl'][0],
                        price: price, // Ensure price is a double
                      );
                      Provider.of<CartProvider>(context, listen: false)
                          .addItem(cartItem); ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${product['name']} added to cart!'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(0), // Rectangular shape
                      ),
                    ),
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                          color: Colors.white, fontSize: 12), // Text color
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.2,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(0), // Rectangular shape
                      ),
                    ),
                    child: const Text(
                      "Buy now",
                      style: TextStyle(
                          color: Colors.black, fontSize: 12), // Text color
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
