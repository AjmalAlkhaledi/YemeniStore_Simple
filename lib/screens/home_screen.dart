import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/product.dart';
import '../widgets/cart_icon_button.dart';
import '../widgets/product_card.dart';
import 'category_products_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('متجر اليمن'),
        actions: const [CartIconButton()],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12),
        children: [
          for (final category in kCategories)
            _CategorySection(category: category),
        ],
      ),
    );
  }
}

class _CategorySection extends StatelessWidget {
  final String category;

  const _CategorySection({required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> products =
        kProducts.where((p) => p.category == category).toList();
    if (products.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          CategoryProductsScreen(category: category),
                    ),
                  );
                },
                child: const Text('عرض الكل'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: products.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              return SizedBox(
                width: 160,
                child: ProductCard(product: products[index]),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
