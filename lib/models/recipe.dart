class Recipe{

  final String id;
  final String title;
  final String time;
  final String ingredients;
  final String bereiding;
  final String imageUrl;
  bool isFavorite;

  Recipe({
    required this.id,
    required this.title,
    required this.time,
    required this.ingredients,
    required this.bereiding,
    required this.imageUrl,
    this.isFavorite = false});
}