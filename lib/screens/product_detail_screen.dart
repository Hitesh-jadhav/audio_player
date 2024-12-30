import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title ?? 'No Title'), // Default text
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                product.image ?? 'https://picsum.photos/200', // Default image
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.image, size: 200); // Fallback widget
                },
              ),
            ),
            SizedBox(height: 16),
            Text(
              product.title ?? 'No Title', // Default text
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              product.description ?? 'No Description Available', // Default text
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
