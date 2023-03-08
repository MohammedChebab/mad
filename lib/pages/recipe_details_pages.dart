import 'package:flutter/material.dart';
import 'package:thuisgemaaktexamen/models/recipe.dart';
import 'package:thuisgemaaktexamen/components/recipe_item.dart';
import 'package:thuisgemaaktexamen/pages/recipe_overview_pages.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecipeDetailPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String ingredients;
  final String bereiding;

  const RecipeDetailPage({
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.bereiding,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.network(imageUrl),
            ),
            const SizedBox(height: 25),
            const SizedBox(
              child: Text(
                'INGREDIËNTEN',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Text(
                ingredients,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 25),
            const SizedBox(
              child: Text(
                'BEREIDING',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Text(
                bereiding,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}
