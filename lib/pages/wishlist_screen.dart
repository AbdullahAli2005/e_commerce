import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlish Screen'),
      ),
      body: const Center(
        child: Text('Wishlish Screen!',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700
        ),),
      ),
    );
  }
}
