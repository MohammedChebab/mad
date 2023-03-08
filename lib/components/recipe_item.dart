import 'package:flutter/material.dart';
import 'package:thuisgemaaktexamen/pages/recipe_details_pages.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecipeItem extends StatelessWidget{
  final String id;
  final String title;
  final String imageUrl;
  final String ingredients;
  final String bereiding;

  RecipeItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.bereiding,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black54,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => RecipeDetailPage(title: title, imageUrl: imageUrl, ingredients: ingredients, bereiding: bereiding,)),
            ),
          );
        },
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
