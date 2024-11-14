import 'package:e_commerce_app/controllers/cart_provider.dart';
import 'package:e_commerce_app/model/cart_model.dart';
import 'package:e_commerce_app/pages/product_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductData extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "id": "20",
      "name": "Originals Superstar",
      "category": "Kids' Running",
      "imageUrl": [
        "https://res.cloudinary.com/devadnani/image/upload/v1638344627/Scarvs%20Main/Products/as_oxfgjh.png",
        "https://res.cloudinary.com/devadnani/image/upload/v1638344627/Scarvs%20Main/Products/as_oxfgjh.png",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/679d44db-f952-4b78-b3e8-1f0e6835e77f-EF5398_a1.webp",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/a767e5dc-0aa6-44bf-9b78-e743b4383672-Q47342_a1.webp"
      ],
      "oldPrice": "1899.00",
      "sizes": [
        {"size": "3.0", "isSelected": false},
        {"size": "3.5", "isSelected": false},
        {"size": "4.0", "isSelected": false},
        {"size": "4.5", "isSelected": false},
        {"size": "5.0", "isSelected": false},
        {"size": "5.5", "isSelected": false},
        {"size": "6.0", "isSelected": false}
      ],
      "price": "89.99",
      "description":
          "Let your girls carry forward the glorious legacy with the adidas Originals Superstar. From courts to streets, these legendary shoes have been ruling hearts for 50 years and continue to live as an icon even after generations. Featuring vibrant details and bright pops of hues, these iconic shoes bring fresh energy to the table and awaken your grade-schoolers inner charisma and sassiness. The distinctive rubber shell toe offers unmatched protection, while the signature 3-Stripes bring in heritage elements and allow your girls to honor the brands legacy in style.",
      "title": "Textile sockliner ensures plush comfort and breathability"
    },
    {
      "id": "21",
      "name": "X_PLR Casual",
      "category": "Kids' Running",
      "oldPrice": "999.00",
      "imageUrl": [
        "https://res.cloudinary.com/devadnani/image/upload/v1637740600/Scarvs%20Main/Category/Reebok_h08nkr.png",
        "https://res.cloudinary.com/devadnani/image/upload/v1637740600/Scarvs%20Main/Category/Reebok_h08nkr.png",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/0d69e3ad-59f0-400c-9b68-1eb002c94cad-CQ2964_a1.webp",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/e07593d1-436f-430d-aeea-ecc01e6f07a0-CP9797_a1.webp"
      ],
      "sizes": [
        {"size": "3.0", "isSelected": false},
        {"size": "3.5", "isSelected": false},
        {"size": "4.0", "isSelected": false},
        {"size": "4.5", "isSelected": false},
        {"size": "5.0", "isSelected": false},
        {"size": "5.5", "isSelected": false},
        {"size": "6.0", "isSelected": false}
      ],
      "price": "44.99",
      "description":
          "Send your child to school in the adidas X_PLR sneaker. This running-inspired shoe has a casual appearance that coordinates with any type of apparel. The adidas stripes are featured on the side for an iconic look. This sneaker has a knit upper lined with mesh for a snug fit and breathable comfort. The speed lacing system integrates with the upper to help kids get ready faster. It comes in several colorways, including classic black and white.",
      "title": "Lightweight EVA midsole wont weigh feet down."
    },
    {
      "id": "22",
      "name": "Originals NMD R1",
      "category": "Kids' Running",
      "imageUrl": [
        "https://res.cloudinary.com/devadnani/image/upload/v1637740600/Scarvs%20Main/Category/Nike_jewqpl.png",
        "https://res.cloudinary.com/devadnani/image/upload/v1637740600/Scarvs%20Main/Category/Nike_jewqpl.png",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/b6a7c1c5-cdd8-46da-a4ea-5756d3a78c81-GX5724_a3.webp"
      ],
      "sizes": [
        {"size": "3.0", "isSelected": false},
        {"size": "3.5", "isSelected": false},
        {"size": "4.0", "isSelected": false},
        {"size": "4.5", "isSelected": false},
        {"size": "5.0", "isSelected": false},
        {"size": "5.5", "isSelected": false},
        {"size": "6.0", "isSelected": false}
      ],
      "oldPrice": "1349.00",
      "price": "80.00",
      "description":
          "Fast is fabulous, just like your little girls. The adidas NMD R1 lets them experience the fast pace of the city life in style and comfort. The NMD brings together street style with technologies from the world of adidas running.The cool monochrome look with comfortable, and matching upper, sole and laces ensure a laid-back, easy-going look. Your little ones can run on as they head to play or chill with you when they head out on their daily adventures",
      "title": "Boost midsole provides proper cushioning and responsiveness"
    },
    {
      "id": "23",
      "name": "Originals Forum Low",
      "category": "Kids' Running",
      "imageUrl": [
        "https://res.cloudinary.com/devadnani/image/upload/v1637740600/Scarvs%20Main/Category/adidas_ourejg.png",
        "https://res.cloudinary.com/devadnani/image/upload/v1637740600/Scarvs%20Main/Category/adidas_ourejg.png",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/5fc88ebd-3bae-47ec-bc32-fafbc1d65e96-GZ1775_a1.webp"
      ],
      "oldPrice": "999.00",
      "price": "64.00",
      "sizes": [
        {"size": "3.0", "isSelected": false},
        {"size": "3.5", "isSelected": false},
        {"size": "4.0", "isSelected": false},
        {"size": "4.5", "isSelected": false},
        {"size": "5.0", "isSelected": false},
        {"size": "5.5", "isSelected": false},
        {"size": "6.0", "isSelected": false}
      ],
      "description":
          "Get your boys hoop-ready in the iconic adidas Originals Forum Low. Featuring a leather upper, these durable kicks are super comfy. The chunky outsole helps your boys get that extra push to perform better in the court. Let your boys channel that 80s basketball energy in style.",
      "title": "Rubber outsole provides added grip and traction"
    },
    {
      "id": "24",
      "name": "UltraBoost DNA 1.0",
      "category": "Kids' Running",
      "imageUrl": [
        "https://res.cloudinary.com/devadnani/image/upload/v1637740600/Scarvs%20Main/Category/Puma_ab8d0u.png",
        "https://res.cloudinary.com/devadnani/image/upload/v1637740600/Scarvs%20Main/Category/Puma_ab8d0u.png",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/d73122f9-f210-4e0d-b07d-5e5a0b3c6680-HQ1405_a1.webp"
      ],
      "oldPrice": "849.00",
      "sizes": [
        {"size": "3.0", "isSelected": false},
        {"size": "3.5", "isSelected": false},
        {"size": "4.0", "isSelected": false},
        {"size": "4.5", "isSelected": false},
        {"size": "5.0", "isSelected": false},
        {"size": "5.5", "isSelected": false},
        {"size": "6.0", "isSelected": false}
      ],
      "price": "58.99",
      "description":
          "Nothing can stop your boys from chasing their personal best. Designed for crushing the daily grind, the adidas UB DNA 1.0 Running Shoes keep your boys covered through the miles. Catering to both long-run races and short-distance walks, these lightweight shoes let your boys pound the pavement with next-level comfort and confidence",
      "title": "Boost cushioning provides responsiveness and plush comfort"
    },
    {
      "id": "25",
      "name": "Adidas Multix",
      "category": "Kids' Running",
      "imageUrl": [
        "https://media.istockphoto.com/id/493023388/photo/sports-shoe.jpg?s=612x612&w=0&k=20&c=dn1uWzjv-tVaTtEUuzuynCKAoEkJ-OzvRt979IGhqKo=",
        "https://media.istockphoto.com/id/493023388/photo/sports-shoe.jpg?s=612x612&w=0&k=20&c=dn1uWzjv-tVaTtEUuzuynCKAoEkJ-OzvRt979IGhqKo="
      ],
      "oldPrice": "599.00",
      "price": "59.00",
      "sizes": [
        {"size": "3.0", "isSelected": false},
        {"size": "3.5", "isSelected": false},
        {"size": "4.0", "isSelected": false},
        {"size": "4.5", "isSelected": false},
        {"size": "5.0", "isSelected": false},
        {"size": "5.5", "isSelected": false},
        {"size": "6.0", "isSelected": false}
      ],
      "description":
          "School mode, weekend mode, vacation mode, the adidas Multix is your preschoolers ally no matter what they are up to. Made with Primegreen — a series of recycled materials, these shoes let your little boys strutter out in eco-conscious strides. Inspired by sleek runners from the adidas archives, these silhouettes feature the OrthoLite sockliner that ensures maximum comfort with superior cushioning. The breathable mesh upper offers breathability, while the durable outsole with a diagonal pattern delivers excellent traction. A minimalist giver, the adidas Multix makes moving fast an easy task.",
      "title": "EVA midsole delivers flexibility and a lightweight feel."
    },
    {
      "id": "26",
      "name": "Originals Stan Smith",
      "category": "Kids' Running",
      "imageUrl": [
        "https://media.istockphoto.com/id/186855155/photo/sport-shoe.jpg?s=612x612&w=0&k=20&c=W1KVqi-vPzIWh7pbyzQ14Kyh0vgat-i0jnUgRfzXVZg=",
        "https://media.istockphoto.com/id/186855155/photo/sport-shoe.jpg?s=612x612&w=0&k=20&c=W1KVqi-vPzIWh7pbyzQ14Kyh0vgat-i0jnUgRfzXVZg=",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/7ef0afb4-9678-4234-89af-37fc2e037101-GY4262_a1.webp"
      ],
      "oldPrice": "2799.00",
      "price": "98.00",
      "sizes": [
        {"size": "3.0", "isSelected": false},
        {"size": "3.5", "isSelected": false},
        {"size": "4.0", "isSelected": false},
        {"size": "4.5", "isSelected": false},
        {"size": "5.0", "isSelected": false},
        {"size": "5.5", "isSelected": false},
        {"size": "6.0", "isSelected": false}
      ],
      "description":
          "Want a sneaker that will never go out of style? You have found it. The boys' adidas Originals Stan Smith will always be a must-have in your sneaker rotation. It was originally served up for tennis pros in 1971, and since then has become a style staple made for everyone in a variety of colors and patterns. The leather upper gives these kicks a clean look, while the perforated 3-Stripes details add premium adidas Originals style. Inside there is a synthetic lining and EVA midsole that provides you with all-day comfort and lightweight cushioning. At the bottom, you will find a tonal rubber outsole that gives you the traction and durability you need",
      "title":
          "Signature Stan Smith logo on the tongue and callout at the heel for a classic feel."
    },
    {
      "id": "27",
      "name": "Ultraboost 5.0 DNA",
      "category": "Kids' Running",
      "imageUrl": [
        "https://media.istockphoto.com/id/486073074/photo/sports-shoe.jpg?s=612x612&w=0&k=20&c=FHf9sYZ-I7K3h_qQxnNeV3N1C4QXhpTpv61NcwxC0yc=",
        "https://media.istockphoto.com/id/486073074/photo/sports-shoe.jpg?s=612x612&w=0&k=20&c=FHf9sYZ-I7K3h_qQxnNeV3N1C4QXhpTpv61NcwxC0yc="
      ],
      "oldPrice": "1049.00",
      "sizes": [
        {"size": "3.0", "isSelected": false},
        {"size": "3.5", "isSelected": false},
        {"size": "4.0", "isSelected": false},
        {"size": "4.5", "isSelected": false},
        {"size": "5.0", "isSelected": false},
        {"size": "5.5", "isSelected": false},
        {"size": "6.0", "isSelected": false}
      ],
      "price": "89.00",
      "description":
          "Your multi-talented kids deserve the creation of a multi-talented star like Pharrell Williams. The adidas Ultraboost DNA kicks bring together Williams style and adidas technology, creating a masterpiece. Give your kids the unbelievable comfort and undeniable style of these premium sneakers.",
      "title": "Continental rubber outsole provides durable traction."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return GestureDetector(
                onTap: () {
                  // Navigate to the product page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductPage(product: product),
                    ),
                  );
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.height * 0.2,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(12)),
                          child: Image.network(
                            product["imageUrl"][0],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product["name"],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "\$${product["price"]}",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.014),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.height * 0.18,
                        padding: const EdgeInsets.symmetric(horizontal: 9.0),
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
                          .addItem(cartItem);
                      
                      ScaffoldMessenger.of(context).showSnackBar(
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
                                color: Colors.white,
                                fontSize: 12), // Text color
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
