import 'package:flutter/material.dart';
import 'package:thuisgemaaktexamen/pages/recipe_premium_pages.dart';
import 'package:thuisgemaaktexamen/pages/recipe_overview_pages.dart';
import 'package:thuisgemaaktexamen/pages/recipe_details_pages.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({super.key});

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int _selectedindex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    const RecipeOverviewPage(),
    const PremiumPage(),
    // const RecipeDetailPage(
    //     title: 'title',
    //     imageUrl: 'imageUrl',
    //     ingredients: 'ingredients',
    //     bereiding: 'bereiding'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline), label: 'Premium'),
        ],
      ),
    );
  }
}
