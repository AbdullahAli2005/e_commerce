import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              height: MediaQuery.of(context).size.width * 0.08,
              width: MediaQuery.of(context).size.width * 0.08,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/1.png"), // Use AssetImage here
                  fit: BoxFit.cover, // Optional: fits image to container
                ),
              ),
            ),
            const Text(
              "Sports",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              height: MediaQuery.of(context).size.width * 0.08,
              width: MediaQuery.of(context).size.width * 0.08,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/2.png"), // Use AssetImage here
                  fit: BoxFit.cover, // Optional: fits image to container
                ),
              ),
            ),
            const Text(
              "Electronics",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              height: MediaQuery.of(context).size.width * 0.08,
              width: MediaQuery.of(context).size.width * 0.08,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/5.png"), // Use AssetImage here
                  fit: BoxFit.cover, // Optional: fits image to container
                ),
              ),
            ),
            const Text(
              "School",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              height: MediaQuery.of(context).size.width * 0.08,
              width: MediaQuery.of(context).size.width * 0.08,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/4.jpeg"), // Use AssetImage here
                  fit: BoxFit.cover, // Optional: fits image to container
                ),
              ),
            ),
            const Text(
              "Apparel",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              height: MediaQuery.of(context).size.width * 0.08,
              width: MediaQuery.of(context).size.width * 0.08,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/3.png"), // Use AssetImage here
                  fit: BoxFit.cover, // Optional: fits image to container
                ),
              ),
            ),
            const Text(
              "All",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
