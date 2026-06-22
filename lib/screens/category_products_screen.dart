import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/product.dart';
import '../widgets/cart_icon_button.dart';
import '../widgets/product_card.dart';

class CategoryProductsScreen extends StatelessWidget {
  final String category;

  const CategoryProductsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> products =
        kProducts.where((p) => p.category == category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        actions: const [CartIconButton()],
      ),
      body: products.isEmpty
          ? const Center(child: Text('لا توجد منتجات في هذا القسم'))
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.66,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) =>
                  ProductCard(product: products[index]),
            ),
    );
  }
}
